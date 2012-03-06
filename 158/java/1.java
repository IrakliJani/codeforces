import java.io.*;
import java.util.*;
public class Main{
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt(); int k=in.nextInt();
        ArrayList<Integer> cont = new ArrayList<Integer>();
        int x;
        for (int i = 0; i < n; i++) {
            cont.add(in.nextInt());
        }
        int counter = 0; int i=0;
        if(cont.get(k-1)>0){
            i=k;
            while(i!=n && cont.get(k-1)==cont.get(i)){
                counter++;
                i++;
            }
            System.out.println(counter+k);
        }
        if(cont.get(k-1)<=0){
            i=k-1;
            while(i>=0 && cont.get(i)<=0){
                counter--;
                i--;
            }
            System.out.println(counter+k);
        }
    }

}