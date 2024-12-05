/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.Drawing;
import java.awt.*;
import java.awt.event.*;

/**
 *
 * @author Parin
 */
public class Drawing extends Frame implements MouseMotionListener{
    
    Drawing(){
    setLayout(null);
setVisible(true);
setSize(1000,1000);

addMouseMotionListener(this);
    }
    

    public static void main(String[] args) {
        System.out.println("Hello World!");
        new Drawing();
    }

    @Override
    public void mouseDragged(MouseEvent e) {
        Graphics G= getGraphics();
        G.setColor(Color.RED);
        G.fillOval(e.getX(), e.getY(), 20, 20);
    }

    @Override
    public void mouseMoved(MouseEvent e) {
        
    }

   
}