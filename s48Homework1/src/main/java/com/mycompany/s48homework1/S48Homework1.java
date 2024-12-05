/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.s48homework1;
import java.awt.*;
/**
 *
 * @author Parin
 */
public class S48Homework1 {
S48Homework1(){
     Frame f = new Frame();
        f.setVisible(true);
        f.setLayout(null);
        f.setSize(1000,1000);
        Checkbox c = new Checkbox("Mango");
         c.setBounds(300,300,150,50);
    Checkbox c1= new Checkbox("Apple");
            c1.setBounds(300,350,150,50);
    Checkbox c2 = new Checkbox("Strawberry");
            c2.setBounds(300,400,150,50);
    f.add(c);
    f.add(c1);
    f.add(c2);
      Button b1= new Button("Button");
      b1.setBounds(300,500,80,80);
      f.add(b1);
      f.setBackground(Color.red);
      b1.setBackground(Color.blue);
}
    public static void main(String[] args) {
        System.out.println("Hello World!");
        new S48Homework1();
    }
}
