import java.util.Scanner;

import javax.swing.JOptionPne;

public class oddev{

    oddev(int a){
        if(a%2==0)
        System.out.println("The number is even");
        else
        System.out.println("The number is odd");
    }

    public void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String num = JOptionPane.showInputDialog(
            null,
            "enter a number:",
            "Check for even/ odd",
            JOptionPane.INFORMATION_MESSAGE
        );
        oddev obj = new oddev(Integer.parseInt(num));
        sc.close();
    }
}