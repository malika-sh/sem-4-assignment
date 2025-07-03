import java.util.Scanner;

public class search{
    public static void search(int[] arr, int num){
        for(int i=0;i<arr.length;i++){
            if (arr[i]==num){
                System.out.println("The number"+num+"is present in array at"+i+"index");
                return;
            }
        }
        System.out.println("The number does not exist in the array");
    }
    public static void main(String[] args){
        Scanner sc= new Scanner(System.in);
        int[] arr={56,89,47,93,74,61,82,95,38,77};

        System.out.print("Enter an element that you want to search:");
        int num= sc.nextInt();

        search(arr,num);
        sc.close();
    }
}