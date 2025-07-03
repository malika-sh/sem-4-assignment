import java.util.Arrays;

public class sortdec{

    public static void main(String[] args){
        int[] arr={56,89,47,93,74,61,82,95,38,77};

        System.out.println("The unsorted array is:"+Arrays.toString(arr));

        Arrays.sort(arr);

        for(int i=0;i<arr.length/2;i++){
            int temp=arr[i];
            arr[i]=arr[arr.length -i-1];
            arr[arr.length-i-1]=temp;
        }
        System.out.println("The sorted array is:"+Arrays.toString(arr));
    }
}