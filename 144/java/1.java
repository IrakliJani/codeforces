import java.util.Scanner;


public class Main {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n=in.nextInt(); int[] soldiers = new int[n];
        int maxIndex=0; int minIndex=0;
        
        for (int i = 0; i < soldiers.length; i++) {
            soldiers[i]=in.nextInt();
            if(soldiers[i] > soldiers[maxIndex]){
                maxIndex=i;
            }else{
                if(soldiers[i] <= soldiers[minIndex]){
                minIndex = i;
                }
            }
        }
        int sum = maxIndex + (n-(minIndex+1));
        if(minIndex < maxIndex) sum--;
        System.out.println(sum);
    }
    
    
}
