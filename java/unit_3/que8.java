// Write a program in Java to demonstrate implementation of multiple inheritance using
//  interfaces.
interface Animal{
    void breathe();
}
interface Mammal{
    void walk();
}
class dog implements Animal,Mammal{
    @Override
    public void breathe(){
        System.out.println("Dog is breathing");
    }
    @Override
    public void walk(){
        System.otu.println("Dog is walking");
    }
}
public class que8{
    public static void main(String[] args){
        Dog dog= new Dog();
        dog.breathe();
        dog.walk();
    }
}