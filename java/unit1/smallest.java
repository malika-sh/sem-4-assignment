import java.util.Scanner;

public class smallest{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter two number:");
        int a = sc.nextInt();
        int b = sc.nextInt();

        int max =(a>b)? a:b;

        System.out.println("The maximum num:"+max);
        sc.close();
    }
}