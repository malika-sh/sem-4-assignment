import java.swing.JOptionPane;

public class leapyear{

    public static void main(String[] args){

    System.out.println("Enter your year:");

    String year = JOptionPane.showInputDialog(
        null,
        "Enter your year:",
        "Leap year checker",
        JOptionPane.INFORMATION_MESSAGE);

        if (Integer.parseInt(year) % 4==0){
            System.out.println("Year"+year+"is leap year");
        }else{
            System.out.println("Year"+year+"is not leap year");
        }
    }
}