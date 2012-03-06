import java.io.*;
import java.util.*;
public class Main{
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        String dir = "/"; int n=in.nextInt(); String line;
        String evr = ""; in.nextLine();
        for (int i = 0; i < n; i++) {
            line=in.nextLine();
            if(line.equals("pwd")){
                evr= evr+dir+"\n";
            }else{
                dir = changeDirectory(line,dir);
            }
        }
        System.out.println(evr);
    }
    
    public static String changeDirectory(String cd, String curd){
        if(cd.equals("/")) return "/";
        String newDir="";
        cd=cd.split(" ")[1];
        String[] dir;
        if(cd.charAt(0)=='/'){
            curd="/"; 
            cd=cd.substring(1);
        }
        dir=cd.split("/");
        for (int i = 0; i < dir.length; i++) {
            if(dir[i].equals("..")){
                curd = goUp(curd);
            }else{
                curd+=dir[i]+"/";
            }
        }   
        return curd;
    }
    public static String goUp(String curd){
        curd = curd.substring(0, curd.length()-1);
        curd = curd.substring(0,curd.lastIndexOf("/"));
        return curd+"/";
    }

}
