// Define User-Defined Exception which calculate the squre of value. 
import java.util.Scanner;
class NegativeNumberException extends Exception{
    public NegativeNumberException(String message){
        super(message);
    }
}
public class que9{
    public static int calculateSquare(int num) throws NegativeNumberException{
        if(num<0){
        throw new NegativeNumberException("error: can not calculate square of a negative number:");
        }
        return num*num;
    }
    public static void main(String[] args){
        Scanner sc= new Scanner(System.in);

        try{
            System.out.print("Enter a number to find its square:");
            int number= sc.nextInt();

            int square= calculateSquare(number);
            System.out.println("Square of"+number+"is:"+square);
        }catch(NegativeNumberException e){
            System.out.println(e.getMessage());
        }catch(Exception e){
            Syetm.out.println("Invalid input! please enter an integer.");
        }finally{
            sc.close();
        }
    }
   
}