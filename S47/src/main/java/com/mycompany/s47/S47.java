/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.s47;
import java.awt.*;

/**
 *
 * @author Parin
 */
public class S47 {
S47(){
      Frame f= new Frame();
      f.setLayout(null);
      f.setVisible(true);
      f.setSize(900, 900);
      Label l = new Label("Label");
      l.setBounds(80, 80, 100, 100);
      //text field means a single line text box
      TextField t= new TextField();
      t.setBounds(200,200,100,40);
      //text area is used to create a multi line textbox
      TextArea t1= new TextArea();
      t1.setBounds(300,500,200,200);
      Button b1= new Button("Button");
      b1.setBounds(400,100,80,80);
      f.add(l);
      f.add(t);
      f.add(t1);
      f.add(b1);
      
}
    public static void main(String[] args) {
        System.out.println("Hello World!");
        new S47();
    }
}
