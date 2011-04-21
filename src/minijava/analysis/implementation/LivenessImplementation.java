package minijava.analysis.implementation;

import java.util.HashMap;

import minijava.analysis.FlowGraph;
import minijava.analysis.Liveness;
import minijava.analysis.util.ActiveSet;
import minijava.analysis.util.graph.Node;
import minijava.ir.temp.Temp;
import minijava.util.List;

public class LivenessImplementation<N> extends Liveness<N>
{
  private HashMap<Node<N>, ActiveSet<Temp>> liveIn;
  private HashMap<Node<N>, ActiveSet<Temp>> liveOut;
  
  public LivenessImplementation(FlowGraph<N> graph)
  {
    super(graph);
    
    liveIn = new HashMap<Node<N>, ActiveSet<Temp>>();
    liveOut = new HashMap<Node<N>, ActiveSet<Temp>>();
    
    for(Node<N> node : graph.nodes())
    {
      liveIn.put(node, new ActiveSet<Temp>());
      liveOut.put(node, new ActiveSet<Temp>());
    }
    
    for(Node<N> node : graph.nodes())
    {
      // Add dependencies for out
      // out[n] = U_{s in succ[n]} in[s]
      List<Node<N>>s = node.succ();
      for(Node<N> succNode : s)
      {
        liveOut.get(node).addAll(liveIn.get(succNode));
      }
      
      // Add dependencies for in
      // in[n] = use[n] U (out[n] - def[n])
      liveIn.get(node).addAll(g.use(node));
      liveIn.get(node).addAll(liveOut.get(node).remove(g.def(node)));
    }
  }

  @Override
  public List<Temp> liveOut(Node<N> node)
  {
    return liveOut.get(node).getElements();
  }
}
