// 18. Write a java program using Wrapper class. 
public class que18{
    public static void main(String[] args){
        int primInt= 25;

        Integer myWrapperInteger= Integer.valueOf(primInt);
        Integer myInt = primInt;

        System.out.println("Wrapper integer ="+myWrapperInteger);

        int unboxedInt= myWrapperInteger.intValue();
        int myAutounboxedInt= myWrapperInteger;

        System.out.println("Unboxed int ="+unboxedInt);

        //integer to string
        String intString = myWrapperInteger.toString();
        System.out.println("Integer to string ="+intString);

        //string to integer
        int parseInt= Integer.parseInt("150");
        System.out.println("parse int= "+parseInt);
    }
}