// Write a program that creates an array of size 5. Try to access an index outside the bounds
//  of the array and catch the ArrayIndexOutOfBoundsException to display an error
//  message.
import java.util.Scanner;

public class que7{
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int[] arr= new int[5];

        System.out.print("Enter the index you want to access:");
        int idx= sc.nextInt();

        try{
            if(idx>arr.length)
            throw new ArrayIndexOutOfBoundsException("there is no index");
            System.out.println("success");
        }catch(ArrayIndexOutOfBoundsException e){
            System.out.println(e);
        }finally{
            sc.close();
        }
    }
}