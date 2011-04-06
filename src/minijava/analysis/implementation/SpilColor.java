package minijava.analysis.implementation;

import minijava.codegen.patterns.Pat;
import minijava.ir.frame.Access;
import minijava.ir.frame.Frame;
import minijava.ir.temp.Color;
import minijava.ir.tree.IRExp;

/**
 * A class to create Color objects used to paint spilled Temps.
 * <p>
 * This allows us to reuse a spil-slot in the frame to paint
 * multiple Temps (if the Temps do not interfere with one
 * another).
 * 
 * @author kdvolder
 */
public class SpilColor extends Color {
	
	private IRExp location;
	private Access access;
	
	/**
	 * Allocate space for a new Spil location in the Frame and
	 * a matching color object we can use to paint
	 * Temp's with.
	 * 
	 * @param frame
	 */
	public SpilColor(Frame frame) {
		access = frame.allocLocal(true);
		location = access.exp(frame.FP());
	}

	@Override
	public String toString() {
		return access.toString();
	}
	
	@Override
	public boolean isRegister() {
		return false;
	}
	
	public IRExp getLocation() {
		return location;
	}

	/**
	 * A Pat<Temp> that only matches a Temp if it is colored
	 * with a SpilColor instance.
	 */
	public static Pat<IRExp> spilledTEMP(Pat<SpilColor> color) {
		return new SpilledTEMPPat(color);
	}

}
