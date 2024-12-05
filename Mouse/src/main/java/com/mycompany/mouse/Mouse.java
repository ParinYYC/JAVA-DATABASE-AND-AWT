/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.Mouse;
import java.awt.*;
import java.awt.event.*;
/**
 *
 * @author Parin
 */
public class Mouse implements MouseListener {
    Button b;

Mouse(){
    Frame f = new Frame();
    f.setLayout(null);
    f.setVisible(true);
    f.setSize(1000,1000);
    b = new Button("");
    b.setBounds(300,300,100,50);
    f.add(b);
   
    b.addMouseListener(this);
   
   
  
    //mouselistener has more mouse properties unlike actionlisterner which has only 1, click.
    //it has 3 categories; click(similar to actionlistern click), press and release(can be used together)
    //enter and exit(means hover, enter means when mouse enter something happens and after exit something else happens)
    //steps
    //1.Implement MouseListerner in class
    //2.Use add MouseLister on component.
    //3.Use one of the inbuilt functions 
 
}
    public static void main(String[] args) {
        System.out.println("Hello World!");
        new Mouse();
    }

    @Override
    public void mouseClicked(MouseEvent e) {
       b.setText("MouseClicked");
    }

    @Override
    public void mousePressed(MouseEvent e) {
    b.setText("MousePressed");
    }

    @Override
    public void mouseReleased(MouseEvent e) {
        b.setText("MouseReleased");
    }

    @Override
    public void mouseEntered(MouseEvent e) {
        b.setText("MouseEntered");
    }

    @Override
    public void mouseExited(MouseEvent e) {
    b.setText("MouseExited");
    }
}
