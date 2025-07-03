// Write a Java program that will convert the given temperature in fahrenheit to
// celcius using the formula C=(F-32)/1.8

import java.util.Scanner;

public class temperature{

    public static float convertToCelsius(float fah){
        return ((fah-32)/1.8f);
    }

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        float fahrenheit;

        System.out.print("Enter the temperature in fahrenheit:");
        fahrenheit= sc.nextFloat();

        sc.close();

        System.out.println(fahrenheit+"C fahrenheit in celsius is:"+convertToCelsius(fahrenheit)+"C");
        
    }
}