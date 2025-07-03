// Write a Java program to create an interface area having pie as its data members and a 
// method compute(float, float)
interface Circle{
    double Pi= Math.PI;

    double compute(float a, float b);
}
class Area implements Circle{
    @Override
    public double compute(float rad, float h){
        return Pi*rad*h;
    }
}
public class que11{
    public static void main(String[] args){
        Area area= new Area();
        System.out.println("Area of circle ="+area.compute(5,7));
    }
}