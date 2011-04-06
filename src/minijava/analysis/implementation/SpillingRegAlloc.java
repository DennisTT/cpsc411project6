package minijava.analysis.implementation;

import java.util.Map.Entry;

import minijava.analysis.RegAlloc;
import minijava.codegen.AssemProc;
import minijava.ir.temp.Color;
import minijava.ir.temp.Temp;
import minijava.util.IndentingWriter;
import minijava.util.List;

/**
 * A slightly better implementation of Register allocation. It properly
 * deals with spilled temps by rewriting the procedure body and trying again.
 */
public class SpillingRegAlloc extends RegAlloc {
	
	private List<RegAlloc> allocations = List.empty();
	// Records the result of each iteration: for debugging.
	
	public SpillingRegAlloc(AssemProc proc) {
		SimpleRegAlloc simple = new SimpleRegAlloc(proc);
		allocations.add(simple);
		while (!simple.getSpilled().isEmpty()) {
			// We'll paint the spilled Temp's with their spil color.
			// This permanently marks them as spilled so when we 
			// rewrite the code we can deal with them specially.
			// (We'll simply add a special munching rules that matches spilled
			// TEMP nodes to our IR Munching rules.
			for (Temp spilled : simple.getSpilled()) {
				spilled.paint(simple.getColorMap().get(spilled));
			}
			proc.rewrite();
			simple = new SimpleRegAlloc(proc);
			allocations.add(simple);
		}
		
		// The last allocation should be good, with no spills!
		// Paint the Temps in permanent paint now.
		for (Entry<Temp, Color> entry : simple.getColorMap().entrySet()) {
			entry.getKey().paint(entry.getValue());
		}
	}

	@Override
	public void dump(IndentingWriter out) {
		int iteration = 1;
		for (RegAlloc alloc : allocations) {
			out.println("==== Register allocation iteration "+iteration++);
			out.indent();
			out.print(alloc);
			out.outdent();
		}
	}

}
