// Write a program to create a thread that implement runnable interface
class MyRunnable implements Runnable{
    public void run(){
        try{
            while(true){
                System.out.println("Runnable thread running");
                Thread.sleep(3000);
            }
        }catch(InterruptedException e){
            System.out.println("thread interrupted");
        }
    }
}
public class que3{
    public static void main(String[] args){
        Thread thread= new Thread(new MyRunnable());
        thread.start();
    }
}