import java.io.*;
import java.util.*;
public class Main{
    public static void main(String[] args) {
    	Scanner in =  new Scanner(System.in);
    	int n=in.nextInt(); int[] numbers = new int[n]; int sum=0;
    	for (int i = 0; i < numbers.length; i++) {
			numbers[i]=in.nextInt();
			sum+=numbers[i];
		}
    	int average=sum/n; int counter=0;
    	if(average*n != sum){ System.out.println(0); return;}
    	int [] ind = new int[n];
    	for (int i = 0; i < numbers.length; i++) {
			if(numbers[i] == average) { ind[i]=i+1;; counter++; }
		}
    	System.out.println(counter);
    	for(int x : ind){
    		if(x != 0) System.out.print(x+" ");
    	}
    }
}

