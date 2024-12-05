/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.s46homework;
import java.awt.*;

/**
 *
 * @author Parin
 */
public class S46Homework {
    S46Homework(){
        Frame f = new Frame();
        f.setSize(1000,1000);
        f.setLayout(null);
        f.setVisible(true);
        Panel p = new Panel();
        p.setBounds(300,300,100,100);
        p.setBackground(Color.red);
        f.add(p);
        Panel p2 = new Panel();
        p2.setBounds(300,400,100,100);
        p2.setBackground(Color.green);
        f.add(p2);
        Panel p3 = new Panel();
        p3.setBounds(400,300,100,100);
        p3.setBackground(Color.yellow);
        f.add(p3);
        Panel p4 = new Panel();
        p4.setBounds(400,400,100,100);
        p4.setBackground(Color.blue);
        f.add(p4);
        
    }

    public static void main(String[] args) {
        System.out.println("Hello World!");
        new S46Homework();
    }
}
