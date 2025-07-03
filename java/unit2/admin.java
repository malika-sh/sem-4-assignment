import java.util.Scanner;

public class admin{

    private int id=0;
    private String name;

    public void input(int id, String name){
        this.id=id;
        this.name=name;

    }
    public void display(){
        System.out.print("\nThe id is:"+id);
        System.out.print("\nThe name is:"+name);
    }

    public static void main(String[] args){
        int id=0;
        Scanner sc =new Scanner(System.in);

        System.out.print("Enter the number of entries:");
        int len= sc.nextInt();

        admin[] entries = new admin[len];

        for(int i=0;i<len;i++){
            System.out.print("Enter the namr:");
            String name = sc.next();
            id++;

            entries[i]= new admin();
            entries[i].input(id,name);
        }
        for(admin entry : entries){
            entry.display();
        }
        sc.close();
    }
}