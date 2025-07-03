import java.util.stack;

public class stack{
    public static void main(String[] args){
        Stack<Integer> stack = new Stack<>();

        stack.push(40);
        stack.push(30);
        stack.push(10);
        stack.push(50);
        stack.push(20);

        System.out.println("The items in stack are:"+stack.toString());
        int min = stack.peek();

        for(int item : stack){
            if(min>item)
            min=item;
        }
        System.out.println("Smallest number in stack is:"+min);
    }
}