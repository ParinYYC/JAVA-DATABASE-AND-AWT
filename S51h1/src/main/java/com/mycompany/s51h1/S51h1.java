/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.s51h1;
import java.awt.*;
import java.awt.event.*;

/**
 *
 * @author Parin
 */
public class S51h1 implements ActionListener {
Button b;
Label l;
    S51h1(){
     Frame f = new Frame();
    f.setLayout(null);
    f.setVisible(true);
    f.setSize(1000,1000);
     b = new Button("Button");
    b.setBounds(300,300,100,50);
    f.add(b);
    b.addActionListener(this);
    l = new Label();
    l.setBounds(200,100,100,75);
    f.add(l);
    }
    
    public static void main(String[] args) {
        System.out.println("Hello World!");
        new S51h1();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
       l.setText("new text");
    }
}
