/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.itemlistener;
import java.awt.*;
import java.awt.event.*;

/**
 *
 * @author Parin
 */
public class Itemlistener implements ItemListener {
//declaration- meaning when we declare the components outside then, when we are creating it insdie, dirctly start from the variable
    //but when we don't do it outside then in that case inside while creating, begore variable always the componenet name will come
    //ex; checkbox c1 = new checkbox();, only when it is not written outside. When declaring outside
    //ex; then we would write it as c1 = new checkboc(); - this rule is for all of them(button,labels,etc).
    
    Checkbox c1;
 Checkbox c2;
 Label l;
    Itemlistener(){
    Frame f = new Frame();
    f.setLayout(null);
    f.setVisible(true);
    f.setSize(1000,1000);
    c1 = new Checkbox("Apples");
    c2 = new Checkbox("Bananas");
    c1.setBounds(500,400,50,50);
    c1.setBounds(500,500,50,50);
    f.add(c1);
    f.add(c2);
    c1.addItemListener(this);
    c2.addItemListener(this);
    l = new Label();
    l.setBounds(500,500,100,75);
    
    //item listener means when we click on a checkbox or on a radio button, then something happens
    //steps:
    //1.Implement item listener in the class
    //2.Use add item listener on radio button, or checkbox
    //3.Use inbuilt function itemstatechange
    }
    public static void main(String[] args) {
        System.out.println("Hello World!");
        new Itemlistener();
    }

    @Override
    public void itemStateChanged(ItemEvent e) {
      //GOAL: when the checkboxes are clicked, according to that text should be shown. When
      //apple checkbox is clicked, apple text will come, vice versa for bannana.
      //this means we will get the text of the particular checkbox which is being clicked,
      //using getsource().
      //Steps:
      //1.We see get the checkbox
      //2.After getting it, we will check if the checkbox is clicked or not
      //if it has value 1 it is clicked, it's not clicked, if it has the value 0, it is not clicked
      //We will use if inside of if
      if (e.getSource()==c1){
          //ternery operator- this is the alternate way to use if, then, else in one line
          //this used when sometimes we need to use if inside of if. Then instead of
          //using seconf if then, we can use ternery operator syntax condition ? (part): else part
      l.setText("Apple" + (e.getStateChange() == 1?"checked":"unchecked"));
      
      
      } 
      if(e.getSource ()==c2){
          l.setText("Bananas" + (e.getStateChange() == 2? "checked":"unchecked"));
      
      }
    }
}
