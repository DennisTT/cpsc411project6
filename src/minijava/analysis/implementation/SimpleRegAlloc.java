package minijava.analysis.implementation;

import static minijava.util.List.cons;

import java.util.HashMap;
import java.util.Map;

import junit.framework.Assert;
import minijava.analysis.FlowGraph;
import minijava.analysis.InterferenceGraph;
import minijava.analysis.RegAlloc;
import minijava.analysis.util.graph.Node;
import minijava.codegen.AssemProc;
import minijava.ir.frame.Frame;
import minijava.ir.temp.Color;
import minijava.ir.temp.Temp;
import minijava.util.IndentingWriter;
import minijava.util.List;

public class SimpleRegAlloc extends RegAlloc {
	
	private final int NUM_COLORS;
	private AssemProc proc;
	private InterferenceGraph ig;
	private Frame frame;
	
	private Map<Temp, Color> colorMap = new HashMap<Temp, Color>();
	private List<Temp> registers;
	private List<Color> colors;
	private List<Color> spilColors = List.empty();
	
	/**
	 * List of *actual* spills.
	 */
	private List<Temp> spilled = List.empty();
	
	@Override
	public void dump(IndentingWriter out) {
		out.println(proc);
		out.println(FlowGraph.build(proc.getBody()));
		out.println(ig);
		out.println("Coloring {");
		out.indent();
		for (Temp temp : colorMap.keySet()) {
			out.print(temp);
			out.print(" : ");
			out.println(colorMap.get(temp));
			out.indent();
			for (Node<Temp> interferes : ig.nodeFor(temp).succ()) {
				out.print(interferes);
				out.print(":");
				out.print(getColor(interferes));
				out.print(" ");
			}
			out.println();
			out.outdent();
		}
		out.outdent();
		out.println("}");
		out.print("Spilled");
		out.println(spilled);
	}
	
	public SimpleRegAlloc(AssemProc proc) {
		this.proc = proc;
		this.frame = proc.getFrame();
		this.registers = frame.registers();
		this.NUM_COLORS = registers.size();
		
		this.colors = List.empty();
		for (Temp reg : registers) 
			colors.add(reg.getColor());
		
		build();
		List<Temp> ordering = simplify();
		
		build(); // must rebuild the graph, since simplify destroys it.
		color(ordering);
		
	}
	
	private void color(List<Temp> toColor) {
		if (toColor.isEmpty()) return;
		Temp t = toColor.head();
		
		//First try to use a register
		boolean success = tryToColor(t, colors);
		
		//Then try to spill using an existing spill slot.
		if (!success) {
			spilled.add(t);
			success = tryToColor(t, spilColors);
		}
		
		if (!success) {
			//Create a new spil slot and use that.
			SpilColor color = new SpilColor(frame);
			spilColors.add(color);
			setColor(t, color);
		}
		color(toColor.tail());
	}

	private boolean tryToColor(Temp t, List<Color> colors) {
		for (Color color : colors) {
			if (isColorOK(ig.nodeFor(t), color)) {
				setColor(t, color);
				return true;
			}
		}
		return false;
	}

	private boolean isColorOK(Node<Temp> node, Color color) {
		for (Node<Temp> interferes : node.succ()) 
			if (color.equals(getColor(interferes))) return false;
		return true;
	}

	/**
	 * Start by building the interference graph for the procedure body.
	 */
	private void build() {
		this.ig = FlowGraph.build(proc.getBody()).getInterferenceGraph();
	}

	/**
	 * Returns a List of Temp's (a stack really) which suggest the order
	 * in which nodes should be assigned colors.
	 */
	private List<Temp> simplify() {
		List<Node<Temp>> preColored = List.empty();
		List<Node<Temp>> toColor = List.empty();
		
		//Separate pre-colored nodes from other nodes.
		for (Node<Temp> node : ig.nodes())
			if (isColored(node)) 
				preColored.add(node);
			else
				toColor.add(node);

		//Calculate an ordering for the toColor nodes
		List<Temp> ordering = List.empty();
		while (!toColor.isEmpty()) {
			Node<Temp> node = selectLowDegreeNode(toColor);
			if (node==null)
				node = selectSpillNode(toColor);
			ordering = cons(node.wrappee(), ordering);
			toColor = toColor.delete(node);
			ig.rmNode(node);
		}
		
		return ordering;
	}

	private Node<Temp> selectSpillNode(List<Node<Temp>> nodes) {
		Node<Temp> best = nodes.head();
		double bestCost = ig.spillCost(best);
		nodes = nodes.tail();
		for (Node<Temp> node : nodes) {
			double cost = ig.spillCost(node);
			if (cost<bestCost) {
				bestCost = cost;
				best = node;
			}
		}
		return best;
	}

	private Node<Temp> selectLowDegreeNode(List<Node<Temp>> nodes) {
		for (Node<Temp> node : nodes) 
			if (node.outDegree() < NUM_COLORS) return node;
		return null;
	}

	private boolean isColored(Node<Temp> node) {
		return getColor(node)!=null;
	}

	private Color getColor(Node<Temp> node) {
		return getColor(node.wrappee());
	}
	private void setColor(Temp t, Color color) {
		Assert.assertNull(getColor(t));
		colorMap.put(t, color);
	}

	/**
	 * Gets the color of a Temp based on the "hypothetical" coloring we are
	 * exploring now.
	 */
	private Color getColor(Temp temp) {
		Color color = temp.getColor();
		if (color!=null) // it is precolored!
			return color;
		color = colorMap.get(temp);
		if (color!=null) return color;
		return null;
	}

	public List<Temp> getSpilled() {
		return spilled;
	}
	
	public Map<Temp, Color> getColorMap() {
		return colorMap;
	}

}
