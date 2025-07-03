import java.util.Scanner;

public class palindrome{

    public static void main(String[] args){
        Scanner sc =new Scanner(System.in);

        System.out.print("Enter the number to check for palindrome:");
        int num = sc.nextInt();

        int res,rem;

        for(int i=num; i!=0;i/=10){
            rem = i%10;
            res =(res*10)+rem;
        }
        if(num==res)
        System.out.println("The number you entered is palindrome");
        else
        System.out.println("The number is not palindrome");

        sc.close();
    }
}