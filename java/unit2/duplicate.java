public class duplicate{

    public static void main(Strin[] args){
        int arr[]={1,2,3,4,2,3,7,8};

        System.out.println("The normal array:");
        for(int e:arr){
            System.out.print(e + " ");
        }

        for(int i=0;i<arr.length;i++){
            for(int j=i+1; j<arr.length; j++){
                if(arr[i]==arr[j]){
                    arr[j]=o;
                }
            }
        }
        System.out.println("\n The duplicate removed array:");
        for(int e:arr){
            if (e==0)
            continue;
            System.out.print(e + " ");
        }
    }
}