package minijava.driver;

import java.io.File;
import java.io.IOException;

import minijava.analysis.RegAlloc;
import minijava.codegen.Assembly;
import minijava.codegen.CodeGenerator;
import minijava.ir.frame.Frame;
import minijava.ir.frame.x86.X86Frame;
import minijava.translate.Fragments;
import minijava.translate.Translator;
import minijava.util.IndentingWriter;

/**
 * The minijava compiler...
 * 
 * @author kdvolder
 */
public class MJCompiler {
	
	private CodeGenerator codegenerator = new CodeGenerator();

	/**
	 * This determines the target architecture. The "default" implementation
	 * is X86. Override to emit code for a different target architecture (this
	 * works in theory only, not tested :-)
	 */
	protected Frame getFrameFactory() {
		return X86Frame.factory;
	}

	/**
	 * Given a minijava source file, compile it and write assembly code into
	 * another file.
	 * 
	 * @param program  program to compile.
	 * @param assemOut where to write the assembly code.
	 */
	public void compile(File program, File assemOut) throws Exception {
		Fragments irCode = Translator.translate(getFrameFactory(), program);
		compileIR(assemOut, irCode);
	}

	public void compile(String program, File assemOut) throws Exception {
		Fragments irCode = Translator.translate(getFrameFactory(), program);
		compileIR(assemOut, irCode);
	}
	
	private void compileIR(File assemOut, Fragments irCode) throws IOException {
		Assembly assembly = codegenerator.apply(irCode);
		RegAlloc.doit(assembly);
		IndentingWriter out = new IndentingWriter(assemOut);
		try {
			assembly.dump(out);
		}
		finally {
			out.close();
		}
	}

}
