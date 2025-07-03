// Write a program to demonstrate the use of the finally block. Ensure that the program
//  prints a message from the finally block regardless of whether an exception is thrown
import java.util.Scanner;

public class que8{
    public static void main(String[] args){
        Scanner sc= new Scanner(System.in);
        int[] arr= new int[5];

        System.out.println("Enter the index");
        int idx= sc.nextInt();

        try{
            if(idx>arr.length)
                throw new ArrayIndexOutOfBoundsException("ther is no index");

                System.out.println("success");

            
        }catch(ArrayIndexOutOfBoundsException e){
            System.out.print(e);
        }finally{
            System.out.println("this line will print amyways even when exception occurs");
            sc.close();
        }
    }
}