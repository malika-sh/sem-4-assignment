// Create a class named 'Rectangle' with two data members 'length' and 'breadth' and two 
// methods to print the area and perimeter of the rectangle respectively. Its constructor 
// having parameters for length and breadth is used to initialize length and breadth of the 
// rectangle. Let class 'Square' inherit the 'Rectangle' class with its constructor having a 
// parameter for its side (suppose s) calling the constructor of its parent class as 'super(s,s)'

class Reactangle{
    double length, breadth;

    Rectangle(double length, double breadth){
        this.length= length;
        this.breadth = breadth;
    }
    void display(){
        System.out.println("The perimeter of rectangle is: "+((lenght+breadth)*2));
        System.out.println("The Area of rectangle is: "+(lenght *breadth));
    }
}
class Square extends Rectangle{
    Square(double side){
        super(side, side);
    }
    @Override
    void display(){
        System.out.println("The perimeter of square:"+(lenght*4));
        System.out.println("The Area of square:"+(lenght* length));
    }
}
public class que13{
    public static void main(String[] args){
        Rectangle rect= new Reactangle(10,20);
        Square cir= new Square(50);

        rect.display();
        cir.display();
    }
}