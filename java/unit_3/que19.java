// Create a object of string buffer class,which stores a string from the user. Perform the
// following operations.
// ● Reverse the string and print it.
// ● Take another string from the user and append it with existing string.
// ● Print the capacity of the modified string
import java.util.Scanner;

public class que19{
    public static void main(String[] args){
        StringBuffer sb= new StringBuffer();
        Scanner sc= new Scanner(System.in);

        System.out.print("Enter the string");
        String str= sc.nextLine();

        sb.append(str);

        System.out.println("The reverse string is: "+sb.reverse());
        System.out.print("Enter another string:");
        str = sc.nextLine();

        sb.append(str);
        System.out.println("The another string is:"+sb);
        System.out.println("The capacity of the string buffer is:"+sb.capacity());

        sc.close();
    }
}