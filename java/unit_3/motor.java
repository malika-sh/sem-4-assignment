// Define a class MotorVehicle to take modelName, modelNumeber, modelPrice, and a
// method display() to display these details. Create another class Car which inherits the
// class MotorVehicle and has the member discountRate and having display() method to
// display details. Test this class with suitable constructor. If necessary use the super
// keyword.
class motorvehical{
    String name;
    int number;
    float price;

    public motorvehical(String name, int number, float price){
        this.name = name;
        this.number = number;
        this.price = price;
    }
    void display(){
        System.out.println("The model name is:"+name);
        System.out.println("The model number is:"+number);
        System.out.println("The model price is:"+price);
    }
}
class Car extends motorvehical{
    float discount;
    public Car(String name, int number, float price, float discount){
       super(name, number, price);
       this.discount= discount;
    }
    @Override
    public void dsiplay(){
        super.display();
        System.out.println("The discount rate is:"+discount+"%");
    }
}
public class motor{
    public static void main(String[] args){
        Car car= new Car("xyz", 111, 11100000, 10.5f);
        car.display();
    }
} 