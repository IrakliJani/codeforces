/**** http://codeforces.com/problemset/problem/149/A  ****/

import java.util.*;

public class Test{
	public static void main( String[] args )
	{
		Scanner in = new Scanner(System.in);
		int n =  in.nextInt(); int counter=0;
		int[] months = new int[12];
		for (int i = 0; i < months.length; i++) {
			months[i] = in.nextInt();
		}
		Arrays.sort(months);
		if(n==0){System.out.println(0); return;}
		int k = months[11];
		if(k>=n){System.out.println(1); return;}
		counter++;
		for (int i = 10; i >= 0; i--) {
			k+=months[i];
			counter++;
			if(k>=n){System.out.println(counter); return;}
		}
		System.out.println(-1);
	}
}

