public class triangle{
    double area;

    triangle(float height, float width){
        this.area=height*width;
    }

    triangle(double base, double height){
        this.area = (base *height)/2;
    }
    public static void main(String[] args){
        triangle rect1= new triangle(10f,5.6f);
        triangle rect2 =new triangle(20.6f,9.14f);

        triangle tri1= new triangle(10.2,6.8);
        triangle tri2= new triangle(6.4,5.1);

        System.out.println("Area of rect1:"+rect1.area);
        System.out.println("Area of rect2:"+rect2.area);
        System.out.println("Area of tri1:"+tri1.area);
        System.out.println("Area of tri2:"+tri1.area);
        
    }
}