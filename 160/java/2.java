import java.util.*;
import java.io.*;

public class Main{
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n=in.nextInt(); int[] n1=new int[n];int[] n2=new int[n];
        
        in.nextLine(); String num=in.nextLine();
        for (int i = 0; i < n; i++) {
            n1[i]=new Integer(new Character(num.charAt(i)).toString());
        }
        
        for (int j=0,i = n; i < 2*n; i++,j++) {
            n2[j]=new Integer(new Character(num.charAt(i)).toString());
        }
        Arrays.sort(n1);  Arrays.sort(n2);
        boolean wasmin=true;
        for (int i = 0; i < n; i++) {
            if(n1[i] >= n2[i])
                wasmin=false;
        }
        boolean wasmax=true;
        for (int i = 0; i < n; i++) {
            if(n1[i] <= n2[i])
                wasmax=false;
        }
        if(wasmin || wasmax){
            System.out.println("YES");
        }else{
            System.out.println("NO");
        }
    }   
}
