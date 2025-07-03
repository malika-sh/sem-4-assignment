import java.applet.Applet;
import java.awt.*;

public class que10 extends Applet{
    @Override
    public void paint(Graphics g){
        //draw house body
        g.setColor(Color.YELLOW);
        g.fillRect(120,150,150,150);
        g.setColor(Color.BLACK);
        g.drawRect(120,150,150,150);

        //draw roof
        int[] xpoints={100,195,290};
        int[] yPoints={150,80,150};
        g.setColor(Color.BLUE);
        g.fillPolygon(xpoints, yPoints,3);
        g.drawPolygon(xpoints, yPoints,3);

        //draw door
        g.setColor(color.GRAY);
        g.fillRect(180,230,40,70);
        g.setColor(Color.BLACK);
        g.drawRect(180,230,40,70);
        g.fillOval(215,265,5,5);//door knob

        //draw windows
        g.setColor(Color.BLUE);
        g.fillRect(140,170,30,30);
        g.fillRect(220,170,30,30);
        g.setColor(Color.BLACK);
        g.drawrect(140,170,30,30);
        g.drawRect(220,170,30,30);

        //draw ground line
        g.setColor(Color.GREEN);
        g.fillRect(80,300,250,10);
    }
}