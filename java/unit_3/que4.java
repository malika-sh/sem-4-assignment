//Write a program to calculate the area of circle, Rectangle & Square by using interface.
import java.util.Scanner;
interface area{
    double calculatearea();
}
class circle implements area{
    double radius;
    public circle(double radius){
        this.radius =radius;
    }
    @Override
    public double calculatearea(){
        return Math.PI*radius*radius;
    }
}
class rectangle implements area{
    double len , bred;
    public rectangle(double len, double bred){
        this.len = len;
        this.bred= bred;
    }
    @Override
    public double calculatearea(){
        return len*bred;
    }
}
class square implements area{
    double len;
    public square(double len){
        this.len = len;
    }
    @Override
    public double calculatearea(){
        return len*len;
    }
}
public class que4{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the radius:");
        double rad= sc.nextDouble();
        circle c1= new circle(rad);

        System.out.println("Area of circle is:"+c1.calculatearea());

        System.out.print("Enter the length:");
        double length= sc.nextDouble();
        System.out.print("Enter the bredgth:");
        double bredg= sc.nextDouble();
        rectangle rect=new rectangle(length, bredg);

        System.out.println("The area of rectangle is:"+rect.calculatearea());

        System.out.print("Enter the length:");
        double sqr=sc.nextDouble();
        square sq= new square(sqr);
        System.out.println("The area of square is:"+sq.calculatearea());

        sc.close();
    }
}