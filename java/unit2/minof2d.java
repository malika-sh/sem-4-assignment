import java.util.Scanner;

public class minof2d{
    public static int getmin(int[][] arr){
        int min= arr[0][0];
        for(int[] row:arr){
            for(int e :row){
                if(min>e)
                min=e;
            }
        }
        return min;

     }
     public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        int[][] mat= new int[3][3];
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){
                System.out.print("Enter value for matrix["+i+"]["+j+"]: ");
                mat[i][j] = sc.nextInt();
            }
        }
        System.out.println("For this matrix the smallest num is:"+getmin(mat));
        sc.close();
     }
}