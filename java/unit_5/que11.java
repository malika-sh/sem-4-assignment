import java.applet.Applet;
import lava.awt.*;

public class que11 extends Applet{
    @Override
    public void paint(Graphics g){
        Graphics2D g2d =(Graphics2D) g;
        g2d.setColor(Color.YELLOW);
        g2d.fillOval(100,100,200,200);

        g2d.setColor(Color.BLACK);
        g2d.fillOval(150,150,30,30);
        g2d.fillOval(220,150,30,30);

        g2d.setStroke(new BasicStroke(5));
        g2d.drawArc(140,180,120,80,180,180);
    }
}