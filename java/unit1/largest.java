import java.util.Scanner;

public class largest{
    public static void main(String[] args){
        Scanner sc =new Scanner(System.in);

        System.out.println("Enter 3 numbers:");
        int a= sc.nextInt();
        int b= sc.nextInt();
        int c= sc.nextInt();
        int max;

        if(a>b){
            if(a>c){
                max=a;
            }else{
                max =c;
            }
        }else if(b>c){
            max=b;
        }else{
            max=c;
        }
        System.out.println("The largest number is:"+max);
        sc.close();
    }
}