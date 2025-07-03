// Write a program that demonstrates autoboxing and autounboxing. Add an int value to an
// ArrayList<Integer> and print the contents of the list. Then, retrieve the value and
// perform mathematical operations.
import java.util.ArrayList;

public class que23{
    public static void main(String[] args){
        ArrayList<Integer> numbers= new ArrayList<>();

         // Autoboxing: int to Integer
         int num=10;
         number.add(num);

         //print content of array list
         System.out.println("ArrayList contents:"+numbers);

         //retrive the value(autounboxing)
         int retrievedNum= numbers.get(0);

         int result= retrievedNum*2;
         System.out.println("Retrieved number:"+retrievedNum);
         System.out.println("After multplication by 2"+result);
    }
}