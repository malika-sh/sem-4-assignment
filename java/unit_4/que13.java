// Write an small application in Java to develop Banking Application in which user
//  deposits the amount Rs 1000.00 and then start withdrawing of Rs 400.00, Rs 300.00 and
//  it throws exception "Not Sufficient Fund" when user withdraws Rs. 500 thereafter.
import java.util.Scanner;

class NotSufficientFund extends Exception{
    NotSufficientFund(String message){
        super(message);
    }
}
public class que13{
    static double amount=1000;

    public static void main(String[] args){
        Scanner sc= new Scanner(System.in);

        try{
            System.out.println("Deposit amount:1000.00");
            System.out.println("Withdraw amount:400.00");
            amount-=400;
            System.out.println("Current balance:"+amount);
            System.out.println("Withdraw amount:300.00");
            amount-=300;
            System.out.println("current balance:"+amount);
            System.out.println("Withdraw amount:500.00");
            amount-=500;

            if(amount<0)
            throw new NotSufficientFund("insufficient balance: "+amount);

        }catch(NotSufficientFund e){
            Sytem.out.println(e);
        }finally{
            sc.close();
        }
    }
}