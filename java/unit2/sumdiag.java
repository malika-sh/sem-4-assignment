public class sumdiag {
    public static void main(String[] args){
        int[][] arr= {{1,2,3}, {4,5,6}, {7,8,9}};
        int sum=0;
        int n=arr.length;

        System.out.println("The matrix is:");
        for(int i=0;i<n;i++){
            for(int j=0;j<n;j++){
                System.out.print(arr[i][j]+" ");
            }
            System.out.println();
        }
        for(int i=0;i<n;i++){
            sum+=arr[i][j];

            if(i!= n-i-1){
                sum+=arr[i][n-i-1];
            }
        }
        System.out.println("Sum of diagnol elements:"+sum);
    }
}