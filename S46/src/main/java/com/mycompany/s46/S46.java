/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.s46;

/**
 *
 * @author Parin
 */
//awt stands for abstract window tool kid which is used to create the gui of java softwares
// Steps to work with AWT Library 
//1. Import AWT library at the top 
//2.The very first thing we need to create is an frame, which is a window, on the top of which where we
//create buttons, labels, textbooks, images, ect.
//3.After creating the window we need to give the properities size, layout, visibility.
//4.Now we can create different things like button, labels.
//5.After creating we need to set their position using setBounds(x,y,width,height).
//6.After creating all the things and then inside the frame use add()
//7.All this coding we need to use/ do it in the constructor(), then call the constructor() in the main()
import java.awt.*;
public class S46 {
S46(){
    Frame f= new Frame();
    //give all the properties related to the frame
    f.setSize(1000,1000);//(resolution-size of the screen)
    //(width,height)
    //frame is an window which we have to always create in the beginning, along with the properties and then create other things labels, buttons,ect
    f.setLayout(null);
    //layout means how we will set the postion of the screen. Ex, vertically or horizontaly(rows,tables) null means 0 layout has been set it comes according to x and y layout
    f.setVisible(true);
    //create text and button
    Label l = new Label("pooky");
    l.setBounds(100,100,200,200);
    //(x,y,width,height)
    //also add this inside the frame, otherwise it won't be visible
    f.add(l);
    Button b= new Button("Bell");
    b.setBounds(300,350,100,40);
    f.add(b);
    //pannel means creating a box inside the frame and eventually inside the box we can create labels , text boxe, buttons
    Panel p = new Panel();
    p.setBounds(300,600,100,100);
    p.setBackground(Color.red);
    f.add(p);
    Button b2= new Button("apple");
    b2.setBounds(320,360,50,20);
    p.add(b2);
}

    public static void main(String[] args) {
        System.out.println("Hello World!");
       new S46(); 
    }
}
