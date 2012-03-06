import java.util.*;
import java.io.*;



public class Main{
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        String p=in.nextLine(); p=p.trim();
        String[] str = p.split(" ");
        ArrayList<String> str2 = new ArrayList<String>();
        for(String x : str){
            x=x.trim();
            if(x.length()==0) continue;
            if(x.charAt(0)!=' ')
                str2.add(x);
        }
        char s,e;
        for (int i = 0; i < str2.size(); i++) {
            boolean viyavi=false;
             s=str2.get(i).charAt(0); e=str2.get(i).charAt(str2.get(i).length()-1);
             if((s!='.' && s!=',' && s!='!' && s!='?') && (e!='.' && e!=',' && e!='!' && e!='?')){
                 str2.set(i, change(str2.get(i))+" ");
                 continue;
             }
             if(str2.get(i).equals(",") || str2.get(i).equals(".") || str2.get(i).equals("!") || str2.get(i).equals("?")){
                 str2.set(i-1,str2.get(i-1).substring(0,str2.get(i-1).length()-1)+str2.get(i));
                 str2.set(i, " ");
                 continue;
             }
             if(s=='.' || s==',' || s=='!' || s=='?'){
                 str2.set(i-1,str2.get(i-1).substring(0,str2.get(i-1).length()-1)+s+" ");
                 str2.set(i, change(str2.get(i).substring(1))+" ");
                 viyavi=true;
             }
             if(e=='.' || e==',' || e=='!' || e=='?'){
                 if(viyavi){
                     str2.set(i, str2.get(i).trim()+" ");
                     continue;
                 }
                 str2.set(i, str2.get(i).trim());
                 str2.set(i, change(str2.get(i)));
                 if(str2.get(i).charAt(str2.get(i).length()-1) != ' ')
                     str2.set(i, str2.get(i)+" ");
             }
        }
        String bolo="";
        for(String x : str2)
            bolo+=x;
        System.out.println(bolo.trim());
    }
    
    public static String change(String p){
        p=p.replaceAll("\\?", "? ");
        p=p.replaceAll("\\.", ". ");
        p=p.replaceAll("\\,", ", ");
        p=p.replaceAll("\\!", "! ");
        return p;
    }
}
