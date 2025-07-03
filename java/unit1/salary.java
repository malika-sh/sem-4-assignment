// Write a Java program to calculate gross salary and net salary of an employee.
//  Gross salary = Hourly rate * total number of hours worked
//  Net salary = gross salary - tax (7.5%)
// Take values from users using Scanner class

import java.util.Scanner;

public class salary{

        public static void main(String[] args){
            float taxrate=7.5f;
            Scanner sc= new Scanner(System.in);

            System.out.print("Enter your salary:");
            float sal = sc.nextFloat();

            System.out.print("Enter your hourly rate:");
            float rate = sc.nextFloat();

            System.out.print("Enter your total hours worked:");
            int hours= sc.nextInt();

            float grossSal = sal+(hours*rate);
            float netSal = (sal+grossSal)- (taxrate *(sal+grossSal)/100);
            System.out.println("Your net salary is:"+ netSal);

            sc.close();

        }
}