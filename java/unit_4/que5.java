// Write a program to define custom exception called "no match exception" that is thrown
//  when a string is not equal to "internet" This string is providing through Joption pane. 
import javax.swing.JOptionPane;

class NoMatchException extends Exception{
    NoMatchException(String message){
        super(message);
    }
}
public class que5{
    public static void checkStr(String str) throws NoMatchException{
        if(!str.equals("internet")){
            throw new NoMatchException("Invalid string passed:"+str);
        }else{
            System.out.println("success");
        }
    }
    public static void main(String[] args){
        Srting str= JOptionPane.showInputDialog(null,"Enter the string:","String check",JOptionPane.INFORMATION_MESSAGE);

        try{
            checkStr(str);
        }catch(NoMatchException e){
            System.out.println(e);
        }
    }
}