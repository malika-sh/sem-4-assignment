// 8. Develop an applet that draws a circle. The dimension of the applet should be 500 x 500
// pixels. The circle should be centered in the applet. Display your name centered in a circle. 
import java.applet.Applet;
import java.awt.*;

public class q8appletcircle extends Applet{
    public void init(){
        setSize(500,500);
    }
    public void paint(Graphics g){
        int width=500;
        int height=500;
        int circleDiameter=200;
        int circleX= (width - circleDiameter)/2;
        int circleY=(heigth - circleDiameter)/2;

        //draw circle
        g.setColor(Color.BLUE);
        g.drawOval(circleX, circleY, circleDiameter, circleDiameter);

        //display name centered inside te circle
        String name= "Malika";
        FontMetrics fm= g.getFontMetrics();
        int textWidth= fm.stringWidth(name);
        int textHeigth= fm.getHeight();

        int textX= circleX +(circleDiameter - textWidth)/2;
        int textY= circleY +(circleDiameter + textHeigth)/2-5;

        g.drawString(name, textX, textY);

    }
}