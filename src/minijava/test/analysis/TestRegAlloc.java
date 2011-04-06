package minijava.test.analysis;

import junit.framework.Assert;

import minijava.analysis.FlowGraph;
import minijava.analysis.InterferenceGraph;
import minijava.analysis.RegAlloc;
import minijava.analysis.util.graph.Node;
import minijava.codegen.AssemProc;
import minijava.ir.temp.Color;
import minijava.ir.temp.Temp;
import minijava.util.List;

import static minijava.util.List.*;

public class TestRegAlloc extends TestFlowGraphs {
	
	protected void test(AssemProc proc) {

		//To verify the coloring, let's make a list of the allowed colors.
		List<Color> goodColors = List.empty();
		for (Temp reg : proc.getFrame().registers()) {
			Color color = reg.getColor(); // Registers should have pre-assigned colors.
			Assert.assertNotNull(color);
			Assert.assertFalse(goodColors.contains(color));
			goodColors = cons(color, goodColors);
		}
		
		//Let's do register allocation and dump out the result.
		RegAlloc alloc = RegAlloc.doit(proc);
		System.out.println("RegAlloc ");
		System.out.println(alloc);
		
		//Now, we can check that the register allocation is "valid" using 
		//the interference graph:
		
		InterferenceGraph ig = FlowGraph.build(proc.getBody()).getInterferenceGraph();
		
		for (Node<Temp> node : ig.nodes()) {
			Temp t = node.wrappee();
			Color color = t.getColor();
			Assert.assertTrue(goodColors.contains(color));
			for (Node<Temp> interferes : ig.nodeFor(t).succ()) {
				Color color2 = interferes.wrappee().getColor();
				Assert.assertTrue(goodColors.contains(color2));
				Assert.assertFalse(color2.equals(color));
			}
		}
		
		// Print the proc again (register allocation is supposed to have painted the
		// non precolored temps with register colors.
		
		System.out.println(proc);
		
	}
	
}
