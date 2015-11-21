import java.util.Scanner;
import java.io.File;

public class Mix {


	static boolean printUntil(Scanner s, String line) {
		while(s.hasNextLine()) {
			String l = s.nextLine();
			if(!l.equals(line))
				System.out.println(l);
			else
				break;
		}

		return !s.hasNextLine();
	}


	public static void main(String[] aoeu) throws Exception {

		if(aoeu.length!=2)
			System.exit(1);

		// First add a pretty print predicate (=
		System.out.println("l(S):-");
		System.out.println("  legal(S),");
		System.out.println("  holds(at(r,5,3), S).");
		System.out.println("");
		System.out.println("pp(do(A,s0)):-");
		System.out.println("  format('~w', [A]).");
		System.out.println("");
		System.out.println("pp(do(A,S)):-");
		System.out.println("  pp(S),");
		System.out.println("  format('; ~w', [A]).");
		System.out.println("");


		String hw = aoeu[0];
		String t  = aoeu[1];
		Scanner sHw = new Scanner(new File(hw));
		Scanner sT  = new Scanner(new File(t));

		boolean end;
		end = printUntil(sHw, "% OBJECTS");           if(end)  System.exit(2);
		end = printUntil(sT, "% Initial situation");  if(end)  System.exit(3);
		end = printUntil(sHw, "% INITIAL_SITUATION"); if(end)  System.exit(4);
		end = printUntil(sT, "%EOF------");           if(!end) System.exit(5);
		end = printUntil(sHw, "%EOF------");          if(!end) System.exit(6);
	}

}
