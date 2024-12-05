/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.mouselistener1;
import java.awt.*;
import java.awt.event.*;
/**
 *
 * @author Parin
 */
public class MouseListener1 implements MouseListener {
    Button b;
    Label l;
MouseListener1(){
    Frame f = new Frame();
    f.setLayout(null);
    f.setVisible(true);
    f.setSize(1000,1000);
    b = new Button("Button");
    b.setBounds(300,300,100,50);
    f.add(b);
    l = new Label("");
    b.addMouseListener(this);
    l.setBounds(300,190,75,50);
    f.add(l);
  
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
        new MouseListener1();
    }

    @Override
    public void mouseClicked(MouseEvent e) {
       l.setText("MouseClicked");
    }

    @Override
    public void mousePressed(MouseEvent e) {
    l.setText("MousePressed");
    }

    @Override
    public void mouseReleased(MouseEvent e) {
        l.setText("MouseReleased");
    }

    @Override
    public void mouseEntered(MouseEvent e) {
        l.setText("MouseEntered");
    }

    @Override
    public void mouseExited(MouseEvent e) {
    l.setText("MouseExited");
    }
}
