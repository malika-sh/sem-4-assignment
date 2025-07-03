import java.util.Scanner;

public class smallest{
    public static int getmin(int[] args){
        int min=arr[0];

        for(int e :arr){
            if(e<min)
            min=e;
        }
        return min;
    }
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int[] arr= new int[10];

        fpr(int i=0; i<arr.length; i++){
            System.out.print("Enter the value arr["+i+"]: ");
            arr[i]= sc.nextInt();
        }
        System.out.println("The smallest number in array is:"+getmin(arr));
        sc.close();
    }
}