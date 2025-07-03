// Consider an employee class, which contains fields such as name and designation. And a
// subclass, which contains a field salary. Write a program for inheriting this relation.

class employee{
    String name, designation;

    public employee(String name, String designation){
        this.name= name;
        this.designation= designation;
    }
    public void display(){
        System.out.println("The name is:"+super.name);
        System.out.println("The designation is:"+super.designation);
    }
    
}
class Hr extends employee{
    float salary;
    public Hr(String name, String designation, float salary){
        super(name,designation);
        this.salary= salary;
    }
    @Override
    public void display(){
        super.display();
        System.out.println("salary:"+salary);
    }
}
public class q2emp{
    public static void main(String[] args){
        Hr hr= new Hr("xyz","ABC",500000f);
        hr.display();
    }
}