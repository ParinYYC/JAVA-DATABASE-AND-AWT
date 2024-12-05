/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.s49;
import java.awt.*;
/**
 *
 * @author Parin
 */
public class S49 {
S49(){
    Frame f = new Frame();
    f.setLayout(null);
    f.setVisible(true);
    f.setSize(1000,1000);
    //choice is used to create a dropdown
    Choice c = new Choice();
    c.setBounds(100,200,100,100);
    c.add("red");
    c.add("yellow");
    c.add("blue");
    c.add("green");
    f.add(c);
    //list is basically is used to create a box where a list is being is shown, it is a litltle different 
    //from chocie as in the choice we have to click on the arrow to make the dropdown appear, but here we don't
    //also in drop down we can select one item, and here we can select multiple items
    List l = new List();
    l.setBounds(100,300,100,100);
    l.add("apple");
    l.add("grape");
    l.add("peaches");
    f.add(l);
    //canvas is the area where we can draw or animate
    f.add(new myCanvas());
    
}
    public static void main(String[] args) {
        System.out.println("Hello World!");
        new S49();
    }
}
class myCanvas extends Canvas{
    public myCanvas(){
        setBackground(Color.red);
        setSize(300,300);
    }
    public void paint(Graphics G){
        //paint is an inbuilt function where we code to draw the shape
        //in Canvas is the connected to the new class that class has been called in the frame
        G.setColor(Color.blue);
        G.fillOval(100,150,100,100);
    }
}

