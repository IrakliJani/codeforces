import java.util.Scanner;

public class Test {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int k = in.nextInt(); int l = in.nextInt(); int m = in.nextInt(); int n = in.nextInt(); int all = in.nextInt();
        int damagedDracons = 0;
        for(int i=1; i<=all; i++){
            if(i%k == 0 || i%l == 0 || i%m == 0 || i%n == 0){
                damagedDracons ++;
            }
        }
        
        System.out.println(damagedDracons);
    }
}
