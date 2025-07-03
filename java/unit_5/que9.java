import java.applet.Applet;
import java.awt.*;

public class que9 extends Applet{
    @Override
    public void pain(Graphics g){
        int[] xPoints ={100,120,180,130,150,100,50,70,20,80};
        int[] yPoints={20,80,80,110,170,140,170,110,80,80};
        int nPoints=2;

        g.setColor(Color.YELLOW);
        g.fillPolygon(xPoints, yPoints, nPoints);

        g.setColor(Color.BLACK);
        g.drawPolygon(xPoints, yPoints, nPoints);
    }
}