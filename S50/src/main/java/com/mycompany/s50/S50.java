/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.s50;
import java.awt.*;
/**
 *
 * @author Parin
 */
public class S50 {
S50(){
    Frame f = new Frame();
    f.setVisible(true);
    f.setLayout(null);
    f.setSize(1000,1000);
    //choice list is a dropdown from where we can select one option
    Choice c = new Choice();
    c.add("pineapple");
    c.add("grape");
    c.add("strawberry");
    c.setBounds(500,200,100,100);
    f.add(c);

    //list box is where we can select mulitple options it's like a box where the lists are shown
    //we don't have to click anywhere
    List l = new List();
    l.add("Soccer");
    l.add("Basketball");
    l.add("Cricket");
    l.setBounds(500,350,100,100);
    f.add(l);
    f.add(new Mycanvas());
    //creating camvas
    //canvas is the area in which we can draw/animate 
}
    public static void main(String[] args) {
        System.out.println("Hello World!");
        new S50();

    }
}
class Mycanvas extends Canvas{
    public Mycanvas(){
        setBackground(Color.gray);
        setSize(300,300);
    }
    public void paint(Graphics g){
        //paint is an inbuilt function where we do the coding like what we want to draw on the screen
        g.setColor(Color.red);
        g.fillOval(100, 100, 50, 50);
        
    }
}