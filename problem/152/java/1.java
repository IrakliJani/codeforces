import java.io.*;
import java.util.*;
public class Main{
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n=in.nextInt(),m=in.nextInt();
        Stud[] stud = new Stud[n]; String s; in.nextLine();
        for (int i = 0; i < n; i++) {
        	stud[i]= new Stud(); stud[i].scores=new int[m];
        	s=in.nextLine();
			for (int j = 0; j < m; j++) {
				stud[i].scores[j]=Integer.parseInt(new Character(s.charAt(j)).toString());
			}
		}	
        int maxind; int counter=0;
        for (int i = 0; i < n; i++) {
        	maxind=i;
			for (int j = 0; j < m; j++) {
				for (int j2 = 0; j2 < stud.length; j2++) {
					if(stud[j2].scores[j] > stud[maxind].scores[j]) maxind=j2;
				}
				if(maxind == i)	{ counter++; break; }
				maxind=i;
			}
		}
        System.out.println(counter);
    }
}

class Stud{
	int[] scores;
}
