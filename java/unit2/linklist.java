import java.util.linkedlist;

public class linklist{

    public static void main(String[] args){
        linkedlist<Integer> list =new linkedlist<>();

        list.add(10);
        list.add(20);
        list.add(30);
        list.add(40);
        list.add(50);
        list.add(60);
        list.add(70);

        System.out.println("The linkedlist is:"+list.toString());
    }
}