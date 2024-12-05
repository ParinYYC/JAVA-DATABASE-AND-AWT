/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.s47homework;
import java.awt.*;
/**
 *
 * @author Parin
 */
public class S47Homework {
    S47Homework(){
        Frame f= new Frame();
      f.setLayout(null);
      f.setVisible(true);
      f.setSize(1000, 1000);
      Label l = new Label("First Name");
      l.setBounds(200,500,100,100);
      Label l2 = new Label("Last Name");
      l2.setBounds(200,570,100,100);
      f.add(l2);
       f.add(l);
       Label l3 = new Label("Date of Birth");
       l3.setBounds(200,650,100,100);
       f.add(l3);
       TextField t = new TextField();
       t.setBounds(300,540,150,25);
       f.add(t);
       TextField t2 = new TextField();
       t2.setBounds(300,600,150,25);
       f.add(t2);
       TextField t3 = new TextField();
       t3.setBounds(300,685,150,25);
       f.add(t3);
 
    }

    public static void main(String[] args) {
        System.out.println("Hello World!");
        new S47Homework();
    }
}
