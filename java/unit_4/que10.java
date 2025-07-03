// Write a class to sort the given set of N integers in descending order. Include a try block
//  to locate the array index out of bounds execption and catch it. 
import java.util.Arrays;
import java.util.Scanner;

public class que10{
    public static void reverseArray(int[] arr){
        int left=0, right=arr.length-1;
        while(left<right){
            int temp=arr[left];
            arr[left]=arr[right];
            arr[right]= temp;
            left++;
            right--;
        }
    }
    public static void main(String[] args){
        Scanner sc= new Scanner(System.in);

        try{
            System.out.print("Enter the number of elements(N): ");
            int n= sc.nextInt();

            if(n<=0){
                throw new IlleagalArgumentException("error:N must be grater than zero.");
            }
            int[] number= new int[n];

            System.out.println("Enter"+n+"integer:");
            for(int i=0;i<n;i++){
                numbers[i]= sc.nextInt();
            }
            Array.sort(numbers);
            reverseArray(numbers);
            
            System.out.println("sorted numbers in descending order:");
            for(int i=0;i<=n;i++){
                System.out.print(number[i]+" ");
            }
            System.out.print("Enter the indx to access:");
            int idx= sc.nextInt();
            if(idx>n)
            throw new ArrayIndexOutOfBoundsException("bkl");
           }catch(ArrayIndexOutOfBoundsException e){
            System.out.println("\nError: Array index out of bounds! Attempted to access an invalid index.");
           }catch(IlleagalArgumentException e){
            System.out.println("error:"+r.getMessage());
           }catch(Exception e){
            System.out.println("invalid input !please enter valid integers");

           }finally{
            sc.close();
           }
    }
}