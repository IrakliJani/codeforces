import java.util.*;

public class Main{
	public static void main( String[] args )
	{
		Scanner in = new Scanner(System.in);
		String number =  in.nextLine(); int counter=0;
		for(char c : number.toCharArray())
			if(c == '4' || c=='7')
				counter++;
		number = new Integer(counter).toString();
		for(char c : number.toCharArray())
			if(c != '4' && c != '7'){
				System.out.println("NO");
				return;
			}
		System.out.println("YES");
		
	}
}

