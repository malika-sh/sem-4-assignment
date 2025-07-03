// Write a program in Java in which a subclass constructor invokes the constructor of the
//  super class and instantiate the values.
class Vehicle{
    String brand;
    int speed;

    Vehicle(String brand, int speed){
        this.brand = brand;
        this.speed = speed;
    }

    void display(){
        System.out.println("Brand:"+brand+"Speed:"+speed+"km/h");
    }
}
class Car extends Vehicle{
    int gear;
    Car(String brand, int speed, int gear){
        super(brand, speed);
        this.gear = gear;
    }
    void showDetails(){
        display();
        System.out.println("Gears:"+gear);
    }
}
public class que7{
    public static void main(String[] args){
        Car car= new Car("Cadillac", 220,6);
        car.showDetails();
    }
}