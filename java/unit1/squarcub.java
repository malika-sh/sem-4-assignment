// Write a Java Program that will accept a number from the user and calculate
// its square and cube and display the same.

import java.util.Scanner;

public class squarcub{

    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number:");
        float num = sc.nextFloat();

        float sqr = num*num;
        float cbu = num*num*num;

        System.out.println("Square of number"+num+"is:"+sqr);
        System.out.println("Cube of number"+num+"is:"+cbu);

        sc.close();
    }

}