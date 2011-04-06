package minijava.analysis;

import minijava.analysis.implementation.SpillingRegAlloc;
import minijava.codegen.AssemFragment;
import minijava.codegen.AssemProc;
import minijava.codegen.Assembly;
import minijava.util.DefaultIndentable;

/**
 * The analysis culminates in register allocation. That is essentially
 * the point of computing the flowgraph, liveness and interference graphs.
 * <p>
 * The register allocation phase tries to allocate all temporaries to registers.
 * <p>
 * Depending on the sophistication of the implementation, it will try to 
 * remove MOVE instructions by allocating their source and destination to the
 * same register. 
 * <p>
 * If it runs out of registers a "simple" implementation may throw an error
 * signaling that the program is "too hard to compile" (of course this would not
 * be ok for a "real" compiler.
 * <p>
 * A more sophisticated implementation should implement "spilling": it 
 * will rewrite the procedure body to store/fetch the temporary from memory.
 * <p>
 * This interface differs from the one in the book in that it doesn't
 * implement "TempMap". Instead register colouring actually "paints" the Temps
 * by calling their paint method.
 * <p>
 * Note however that internally you may still wish to use a map to represent
 * a hypothetical colouring (since our implementation of colour uses "permanent"
 * paint, so a hypothetical colouring can not be "undone" if it turns out
 * to be wrong.)
 * 
 * @author kdvolder
 */
public abstract class RegAlloc extends DefaultIndentable {

	public static RegAlloc doit(AssemProc proc) {
		return new SpillingRegAlloc(proc);
	}

	/**
	 * Apply the register allocator to each Assembly code fragment.
	 * <p>
	 * This returns void. The actual "result" of register allocation is 
	 * that the assembly code in the fragments gets modified by means of
	 * side effects to use actual registers rather than
	 * "fictional" Temp's.
	 *  
	 * @param assembly
	 */
	public static void doit(Assembly assembly) {
		for (AssemFragment frag : assembly) {
			if (frag instanceof AssemProc)
				doit((AssemProc) frag);
			else
				throw new Error("RegAlloc doesn't know how to handle such fragments");
		}
	}

}
