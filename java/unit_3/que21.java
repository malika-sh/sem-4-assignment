// Write a java program which contains the two string from user and perform the following
//  string.
//  ● Find out whether two strings are equal.
//  ● Find out whether two strings equal when case is ignored.
//  ● Compare two strings
import java.util.Scanner;
public class que21{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the string:");
        String str1= sc.nextLine();

        System.out.print("Enter the string2:");
        String str2 = sc.nextLine();

        //1
        System.out.println("If two string atr equal="+str1.equals(str2));

        //2
        System.out.println("If strings are equals with case ignored=" +str1.equalsIgnoreCase(str2));
        //3
        int res= str1.compareTo(str2);

        if(res==0){
            System.out.println("Both strings are equal");
        }else{
            System.out.println("The string are not equal");
        }
        System.out.println();
        sc.close();
    }
}