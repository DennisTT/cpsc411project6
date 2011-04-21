package minijava.analysis.implementation;

import java.util.HashMap;
import java.util.Iterator;

import minijava.analysis.FlowGraph;
import minijava.analysis.InterferenceGraph;
import minijava.analysis.InterferenceGraph.Move;
import minijava.analysis.util.graph.Node;
import minijava.codegen.assem.A_LABEL;
import minijava.codegen.assem.A_MOVE;
import minijava.codegen.assem.Instr;
import minijava.ir.temp.Label;
import minijava.ir.temp.Temp;
import minijava.util.List;

public class AssemFlowGraph extends FlowGraph<Instr>
{  
  public AssemFlowGraph(List<Instr> body)
  {
    HashMap<Label, Instr> labels = new HashMap<Label, Instr>();
    
    // Create all the nodes in the graph
    Iterator<Instr> itr = body.iterator();
    while(itr.hasNext())
    {
      Instr i = itr.next();
      this.newNode(i);
      
      // Save labels for later
      if(i instanceof A_LABEL)
      {
        labels.put(((A_LABEL)i).getLabel(), i);
      }
    }
    
    // Iterate through again to add the jump edges
    itr = body.iterator();
    Instr previous = null;
    while(itr.hasNext())
    {
      Instr i = itr.next();
      
      // If previous jump was not a jump, add direct connection
      if(previous != null)
      {
        this.addEdge(this.nodeFor(previous), this.nodeFor(i));
      }
      
      // Handle edges for jumps
      if(i.jumps() != null)
      {
        Iterator<Label> labelItr = i.jumps().iterator();
        while(labelItr.hasNext())
        {
          Label target = labelItr.next();
          this.addEdge(this.nodeFor(i), this.nodeFor(labels.get(target)));
        }
        previous = null;
      }
      else
      {
        // Not a jump, mark this instruction so that next instruction can add edge.
        previous = i;
      }
    }
  }

  @Override
  public List<Temp> def(Node<Instr> node)
  {
    return node.wrappee().def();
  }

  @Override
  public List<Temp> use(Node<Instr> node)
  {
    return node.wrappee().use();
  }

  @Override
  public boolean isMove(Node<Instr> node)
  {
    return (node.wrappee() instanceof A_MOVE);
  }

  @Override
  public InterferenceGraph getInterferenceGraph()
  {
    InterferenceGraphImplementation ig = new InterferenceGraphImplementation();
    LivenessImplementation<Instr> live = new LivenessImplementation<Instr>(this);
    
    for(Node<Instr> node : this.nodes())
    {
      // Special treatment for MOVE instructions
      if(isMove(node) && node.wrappee() instanceof A_MOVE)
      {
        // Record a move
        ig.addMove((A_MOVE) node.wrappee());
      }
      
      for(Temp def : this.def(node))
      {
        for(Temp out : live.liveOut(node))
        {
          if(!isMove(node) || !(node.wrappee() instanceof A_MOVE))
          {
            // Not a MOVE instruction
            
            // Check if redefining a previous MOVE dst
            for(Move move : ig.moves())
            {
              // Add edge back if clobbering dst, and src is still live
              if(move.dst.equals(def) && move.src.equals(out))
              {
                ig.addEdge(move.dst, move.src);
                ig.addEdge(move.src, move.dst);
              }
            }
            
            // Add regular interference edges
            if(!def.equals(out))
            {
              ig.addEdge(ig.nodeFor(def), ig.nodeFor(out));
              ig.addEdge(ig.nodeFor(out), ig.nodeFor(def));
            }
          }
          else
          {
            // MOVE instruction
            
            // def = destination
            // source is in the out list
            Temp mvSrc = ((A_MOVE) node.wrappee()).src;
            Temp mvDst = ((A_MOVE) node.wrappee()).dst;
            
            // For move nodes, add interference edges that are not (s, t) for s -> t moves
            if(!(mvDst.equals(def) && mvSrc.equals(out)) && !def.equals(out))
            {
              ig.addEdge(ig.nodeFor(def), ig.nodeFor(out));
              ig.addEdge(ig.nodeFor(out), ig.nodeFor(def));
            }
          }
        }
      }
    }
    
    return ig;
  }
}
