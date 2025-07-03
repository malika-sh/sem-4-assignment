// Write a Java program to input n integer numbers and display lowest and second lowest
//  number. Also handle the different exceptions possible to be thrown during execution. 
import java.util.Scanner;

public class que3{
    public static void main(String[] args){
        Scanner sc= new Scanner(System.in);
        try{
            int num=0;
            int largest=0;
            int secondlarg=0;

            while(num!=-1){
                System.out.print("Enter a number (to exit enter -1):");
                num=sc.nextInt();
                if(num>largest){
                    secondlarg= largest;
                    largest= num;
                }
            }
            System.out.println("The largest num you enetr is:"+largest);
            System.out.println("The second largest num you enetr is:"+secondlarg);
        }catch(IlleagalArgumentException e){
            System.out.printn(e);
        }catch(Exception e){
            System.out.println(e);
        }
        sc.close();
    }
}