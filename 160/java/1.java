import java.util.*;
import java.io.*;

public class Main{
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n=in.nextInt(); int[] numbers=new int[n];
        for (int i = 0; i < numbers.length; i++) {
            numbers[i]=in.nextInt();
        }
        int mySum=0; int twinSum=0; int counter=1;
        Arrays.sort(numbers);
        if(n==1){
            System.out.println(1);
            return;
        }
        for (int i=0,j=n-1; j>0; i++,j--) {
            mySum+=numbers[j]; twinSum=sumThis(numbers, j-1);
            if(mySum>twinSum){
                System.out.println(counter);
                return;
            }
            counter++;
        }
        System.out.println(counter);
        
    }
    
    public static int sumThis(int[] n, int i){
        int sum=0;
        for (int j = 0; j <=i; j++) {
            sum+= n[j];
        }
        return sum;
    }
}
