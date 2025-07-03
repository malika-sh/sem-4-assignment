// Write a Java program that accepts user input as a string and tries to convert it to an
//  integer. Handle NumberFormatException when the user inputs non-numeric data.
import java.util.Scanner;

public class que11{
    public static void main(Srting[] args){
        Scanner sc= new Scanner(System.in);

        System.out.print("enter a numeric string:");
        String str= sc.nextLine();

        try{
            int num=Integer.parseInt(str);
            System.out.println("Converted integer:"+num);
        }catch(NumberFormatException e){
            System.out.println("error:invalid input: enter a valid numeric number");

        }finally{
            sc.close();
        }
    }
}