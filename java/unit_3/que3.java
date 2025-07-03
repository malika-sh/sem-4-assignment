// Write a program to calculate arithmetic mean in the superclass and standard deviation in
// the subclass.

class arithmetic{
    public double cmean(int[] nos){
        double sum=0;
        for(int num:nos){
            sum+=num;
        }
        return sum/nos.length;
    }
}
class Sd extends arithmetic{
    public double calcsd(int[] nos){
        double mean= cmean(nos);
        double sum=0;
        for(int num:nos){
            sum += Math.pow(num-mean, 2);
        }
        return Math.sqrt(sum/nos.length);
    }
}
public class que3{
    public static void main( String[] args){
        int[] data={1,2,3,4,5,6};
        Sd s= new Sd();
        System.out.println("mean="+s.cmean(data)); 
        System.out.println("Standard deviation="+s.calcsd(data)); 
    }
}