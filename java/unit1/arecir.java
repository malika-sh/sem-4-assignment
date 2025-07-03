// 5. Write a Java Program to find area of a circle.

import java.util.Scanner;

public class arecir{

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the radius of the the circle:");
        double rad = sc.nextDouble();

        double area= 3.14*rad*rad;

        System.out.println("The area of circle with radius"+rad+"is: "+area);
        sc.close();
    }
}