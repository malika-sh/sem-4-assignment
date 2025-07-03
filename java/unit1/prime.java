// Write a Java Program that will ask the user to input one number and check
// whether its prime number or not using Constructor

import java.util.Scanner;

import.javax.swing.JOptionPane;

public class prime{
    static boolean isPrime=true;

    prime(int a){
        for(int i=2;i<=a/2; i++){
            if(a%i==0){
                isPrime=false;
                break;
            }
        }
        if(isPrime)
        System.out.println("Number:"+a+"is prime");
        else
        System.out.println("Number"+a+"is not prime");
    }
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        String num = JOptionPane.showInputDialog(
            null,
            "Enter a number:",
            "Prime or not",
            JOptionPane.INFORMATION_MESSAGE
        );

        prime obj = new prime(Integer.parseInt(num));
        sc.close();
    }
}