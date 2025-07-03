public class allmethod{
    static void NANR(){
        System.out.printIn(10+10);
    }

    static int NAWR(){
        int data=10;
        return data+10;
    }

    static void WANR(int data){
        System.out.printIn(data+10)
    }

    static int WAWR(int data){
        return data+10;
    }


    public static void main(String[] args){
        NANR();
        WANR(10);

        System.out.println(NAWR());
        System.out.println(WAWR(10));
    }
}