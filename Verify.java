import java.util.Scanner;
import java.io.File;
import java.util.regex.Pattern;

public class Verify {

	static Pattern p = Pattern.compile(",[^;]*;");

	public static void main(String[] aoeu) {

		if(aoeu.length!=1)
			System.exit(1);

		Scanner sSol, s;
		String instanceSolution=null, givenSolution=null;
		try {
			sSol = new Scanner(new File(aoeu[0]));
			instanceSolution = sSol.nextLine().split("Solution: ")[1]+";";
		}
		catch(Exception e) {
			System.err.println("Couldn't read instance solution");
			System.err.println(e);
			System.exit(1);
		}

		try {
			s = new Scanner(System.in);
			givenSolution = s.nextLine();
		}
		catch(Exception e) {
			System.err.println("No solution read");
			System.exit(2);
		}

	  givenSolution = p.matcher(givenSolution+";").replaceAll(");");
		if(!instanceSolution.equals(givenSolution)) {
			System.out.format("Solutions differ for '%s'.\n  '%s'\n  '%s'\n",
			                  aoeu[0],
			                  instanceSolution,
			                  givenSolution);
			System.exit(10);
		}
	}

}
