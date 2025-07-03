import java.util.Arrays;

public class lengthdup{

    public static void main(String[] args){
        int arr[]={20,20,30,40,50,50,50};

        int uniqueindex=o;

        System.out.println("The normal:"+Arrays.toString(arr));

        for(int i=0;i<arr.length;i++){

            if(arr[i]!= arr[uniqueindex]){
                uniqueindex++;
                arr[uniqueindex]=arr[i];
            }
        }

        uniqueindex++;

        System.out.println("\nThe duplicate removed array:");
        for(int i=0;i<uniqueindex;i++){
            System.out.print(arr[i]+" ");
        }
        System.out.println("\nThe new unique length ARRAY IS":+uniqueindex);
    }
}