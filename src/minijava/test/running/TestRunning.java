package minijava.test.running;

import java.io.File;

import junit.framework.Assert;
import minijava.driver.MJCompiler;
import minijava.driver.MJRunner;
import minijava.test.translate.TestTranslate;
import minijava.translate.Fragments;
import minijava.typechecker.TypeCheckerException;

/**
 * This is the final test... 
 * <p>
 * We reuse again all the tests from TestTranslate, but this time
 * we run them not by translating into IR, but by compiling to
 * an assembly file, calling the gnu assembler / linker and
 * running the resulting executable file.
 * 
 * @author kdvolder
 */
public class TestRunning extends TestTranslate {

	MJCompiler compiler = new MJCompiler();
	MJRunner runner = new MJRunner();

	@Override
	protected Fragments test(String expected, File program) throws TypeCheckerException,
			Exception {
		String assemFileName = program.toString();
		assemFileName = assemFileName.substring(0, assemFileName.length()-".java".length());
		assemFileName = assemFileName + ".s";
		File assemFile = new File(assemFileName);
			
		System.out.println("compiling: "+program);
		compiler.compile(program, assemFile);
		System.out.println(">>>>>  "+assemFile);
		
		String output = runner.run(assemFile);
		Assert.assertEquals(expected, output);
		
		return null;
	}
	
	@Override
	protected Fragments test(String expected, String program) throws Exception {
		File assemFile = new File("temp.s");
		if (assemFile.exists())
			assemFile.delete();
			
		System.out.println("compiling: "+program);
		compiler.compile(program, assemFile);
		System.out.println(">>>>>  "+assemFile);
		
		String output = runner.run(assemFile);
		Assert.assertEquals(expected, output);
		return null;
	}

}
