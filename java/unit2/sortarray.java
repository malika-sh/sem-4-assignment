import java.util.Arrays;

public class sortarray{

    public static void main(String[] args){
        int[] arr={10,30,20,6,90,76,32,45,44,36};
        System.out.println("Normal array:"+ Arrays.toString(arr));

        Arrays.sort(arr);

        System.out.println("Sorted array:" + Arrays.toString(arr));
    }
}