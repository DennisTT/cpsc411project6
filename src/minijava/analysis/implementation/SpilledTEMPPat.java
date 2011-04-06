package minijava.analysis.implementation;

import minijava.codegen.patterns.Matched;
import minijava.codegen.patterns.Pat;
import minijava.ir.tree.IRExp;
import minijava.ir.tree.TEMP;
import minijava.util.IndentingWriter;
import minijava.util.List;

public class SpilledTEMPPat extends Pat<IRExp> {
	
	private Pat<SpilColor> color;

	public SpilledTEMPPat(Pat<SpilColor> color) {
		this.color = color;
	}

	@SuppressWarnings("unchecked") @Override
	public Pat<IRExp> build(List<Pat<?>> children) {
		return new SpilledTEMPPat((Pat<SpilColor>) children.get(0));
	}

	@Override
	public List<Pat<?>> children() {
		return List.list(new Pat<?>[] {color});
	}

	@Override
	public void match(IRExp toMatch, Matched matched) throws Failed {
		TEMP tmp = (TEMP) toMatch;
		SpilColor color = (SpilColor) tmp.getColor();
		if (color==null) fail();
		this.color.match(color, matched);
	}

	@Override
	public void dump(IndentingWriter out) {
		out.print("SPILLED(");
		out.print(color);
		out.print(")");
	}

}
