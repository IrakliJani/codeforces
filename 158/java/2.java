import java.io.*;
import java.util.*;
public class Main{
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt(); int[] numbers= new int[5];
        for (int i = 0; i < n; i++) {
            numbers[in.nextInt()]++;
        }
        int counter = 0;
        counter+=numbers[4];
        if(numbers[3]>=numbers[1]){
            counter+=numbers[1];
            numbers[3]-=numbers[1];
            numbers[1]=0;
        }else{ 
            counter+=numbers[3];
            numbers[1]-=numbers[3];
            numbers[3]=0;
        }
        counter= counter+(numbers[2]/2);
        numbers[2]=numbers[2]%2;
        if(numbers[2]!=0){
            counter++;
            if(numbers[1]==2){numbers[1]-=2;}
            if(numbers[1]==1){numbers[1]-=1;}
        }
        counter+=numbers[3];
        counter+=(numbers[1]/4);
        System.out.println(counter);
    }

}
