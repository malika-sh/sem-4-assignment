// Write a Java Program to create an array containing marks of all students in physics using a for-each loop

public class makrs{
    public static void main(String[] args){
        int[] mark ={87,92,78,65,89,73,94,88,81,77};

        System.out.println("Marks of student in physics:");

        for(int e: marks){
            System.out.print(e+" ");
        }
    }
}