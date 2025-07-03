// Write a program that executes two threads. One thread will print the even numbers and 
// the other thread will print odd numbers from 1 to 50.
class EvenThread extends Thread{
    public void run(){
        try{
            for(int i=1;i<=50;i++){
                if(i%2==0)
                System.out.print(i+" ");
                Thread.sleep(1000);
            }
        }catch(InterruptedException e){
            System.out.println("The thread was interrupted");
        }
    }
}
class OddThread extends Thread{
    public void run(){
        try{
            fir(int i=1;i<=50;i++){
                if(i%2!=0)
                System.out.print(i+" ");
                Thread.sleep(1000);
            }
        }catch(InterruptedException e){
            Syste.out.println("the thread was interrupted");
        }
    }
}
public class que2{
    public static void main(String[] args){
        OddThread ot= new OddThread();
        EvenThread et=new EvenThread();

        ot.start();
        et.start();
    }
}