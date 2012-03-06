import java.io.*;
import java.util.*;
public class Main{
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n=in.nextInt(); int[] numbers=new int[n]; int maxSum=0;
        ArrayList<Integer> minus = new ArrayList<Integer>();
        for (int i = 0; i < numbers.length; i++) {
            numbers[i]=in.nextInt();
            maxSum+=numbers[i];
            if(numbers[i]<0) minus.add(i);
        }
        int maxPol=(n/3)-1;
        if(maxPol==0) { System.out.println(maxSum); return; }
        if(minus.size()==0) { System.out.println(maxSum); return; }
        int sum=0;
        for (int i=1; i<=maxPol; i++) {
            sum=sumNumbers(numbers, i);
            if(sum>maxSum) maxSum=sum;
        }
        System.out.println(maxSum);
        
    }
    
    
    public static int sumNumbers(int[] numbers, int pol){
        int maxSum= -100000000;int sum=0;
        for (int i = 0; i<=pol; i++) {
            for (int j = i; j<numbers.length; j+=(pol+1)) {
                if(j>(numbers.length-1)) break;
                sum+=numbers[j];
            }
            if(sum > maxSum) maxSum=sum;
            sum=0;
        }   
        return maxSum;
    }
}
