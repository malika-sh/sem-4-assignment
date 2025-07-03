// Write a java program which takes 2 arguments - a string and its length. If the length of
//  the string is not according to given one then throw the user defined
//  LengthMatchException and handles it appropriately. 
class LengthMatchException extends Exception{
    LengthMatchException(String message){
        super(message);
    }
}
public class que2{
    public static void checkStrlen(String str, int length) throws LengthMatchException{
        if(str.length() != length)
        throw new LengthMatchException("Error: string length not matched");
        System.out.println("success:string length matched");
    }
    public static void main(String[] args){
        try{
            checkStrlen("malika",7);
        }catch(LengthMatchException e){
            System.out.print(e);
        }
    }
}