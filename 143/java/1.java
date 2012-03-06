import java.util.*;
import java.io.*;

public class Main{
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int r1=in.nextInt(),r2=in.nextInt(),c1=in.nextInt();
	int c2=in.nextInt(),d1=in.nextInt(),d2=in.nextInt();
        int x2=(d2-c1+r1)/2;
        if(2*x2 != (d2-c1+r1)){
            System.out.println("-1");
            return;
        }
        int x1=r1-x2; int x3=c1-x1; int x4=r2-x3;
        if((x1+x4)!=d1 || (x2+x3)!=d2 || (x1+x3)!=c1 || (x2+x4)!=c2 || (x1+x2)!=r1 || (x3+x4)!=r2){
            System.out.println("-1");
            return;
        }
        if((x1<1 || x1>9) || (x2<1 || x2>9) || (x3<1 || x3>9) || (x4<1 || x4>9)){
            System.out.println(-1);
            return;
        }
        if(x1==x2 || x1==x3 || x1==x4 || x2==x3 || x2==x4 || x3==x4){
            System.out.println(-1);
            return;
        }
        System.out.println(x1+" "+x2+"\n"+x3+" "+x4);
        
    }
}
