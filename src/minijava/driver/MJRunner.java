package minijava.driver;

import java.io.File;
import java.io.IOException;

import minijava.util.RunCommand;

public class MJRunner {

	/**
	 * Use gcc and as to create an object file, link it into
     * an executable and then run it.
	 *
	 * @param assemFile
	 */
	public String run(File assemFile) throws IOException {
		File objFile = objFile(assemFile);
		gas(assemFile, objFile);
		
		File exeFile = exeFile(objFile);
		link(objFile, exeFile);
		String result = exec(exeFile);
		System.out.println("-----\n"+result+"-----");
		return result;
	}

	private File exeFile(File objFile) {
		String exeFileName = objFile.toString();
		if (exeFileName.endsWith(".o"))
			exeFileName = exeFileName.substring(0, exeFileName.length()-1);
		exeFileName = exeFileName+"exe";
		return new File(exeFileName);
	}

	private File objFile(File assemFile) {
		String objFileName = assemFile.toString();
		if (objFileName.endsWith(".s"))
			objFileName = objFileName.substring(0, objFileName.length()-1);
		objFileName = objFileName+"o";
		return new File(objFileName);
	}

	/**
	 * Call on the gnu assembler to create an object file.
	 * @throws IOException 
	 */
	protected void gas(File assemFile, File objFile) throws IOException {
		RunCommand result = new RunCommand(
				new String[] {
					"as", "--gstabs", "-o", objFile.toString(), assemFile.toString()
				}, 
				false, true);
		if (result.getReturnCode()!=0) {
			throw new Error(result.getErrorOutput());
		}
	}
	
	/**
	 * Call on gcc to link our object file with the runtime library to produce an .exe file.
	 * @throws IOException 
	 */
	protected void link(File objFile, File exeFile) throws IOException {
		RunCommand result = new RunCommand(
				new String[] {
					"gcc", "-Wall", "-pedantic", 
					"-o", exeFile.toString(),
					objFile.toString(),
					runtimeLib().toString()
				}, 
				true, true);
		if (result.getReturnCode()!=0) {
			throw new Error(result.getOutput()+"\n"+result.getErrorOutput());
		}
	}

	private String exec(File exeFile) throws IOException {
		RunCommand result = new RunCommand(
				new String[] {
					"./"+exeFile.toString()
				}, 
				true, true);
		if (result.getReturnCode()!=0) {
			throw new Error(result.getOutput()+"\n"+result.getErrorOutput());
		}
		else
			return result.getOutput();
	}

	protected File runtimeLib() {
		return new File("runtime/runtime.o");
	}

}
