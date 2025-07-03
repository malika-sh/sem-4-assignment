// Create a class name Book that contains data fields for the title and number of pages.
// Include get and set methods for these fields. Next, create a subclass named Textbook,
// which contains an additional field that holds a grade level for the Textbook and
// additional methods to get and set grade level field. Write an application that
// demonstrates using objects of each class.
class Book{
    String title;
    int page;

    public void set(String title, int pages){
        this.title = title;
        this.pages = pages;
    }
    public int getpages(){
        return pages;
    }
    public String gettitle(){
        return title;
    }
}
class Textbook extends Book{
    int gradelevel;
    public void setGradelevel(int gradelevel){
        this.gradelevel = gradelevel;
    }
    Textbook(String title, int pages, int gradelevel){
        super.set(title, pages);
        setGradelevel(gradelevel);
    }
    public int getGradelevel(){
        return gardelevel;
    }
}
public class que6{
    public static void main(String[] args){
        Textbook tb= new Textbook("Math",500,11);
        System.ouy.println("grade level:"+tb.getGradelevel()+"\n Total pages:"+tb.getpages()+"\n book title:"+tb.gettitle());
    }
}