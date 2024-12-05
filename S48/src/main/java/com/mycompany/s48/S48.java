/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.s48;
import java.awt.*;


/**
 *
 * @author Parin
 */
public class S48 {
S48(){
    Frame f = new Frame();
    f.setSize(500,500);
    f.setLayout(null);
    //null means no layout has been set
    f.setVisible(true);
    Checkbox c = new Checkbox("Mango");
    Checkbox c1= new Checkbox("Apple");
    Checkbox c2 = new Checkbox("Strawberry");
            c.setBounds(25,25,50,50);
            c1.setBounds(25,80,50,50);
            c2.setBounds(25,135,50,50);
            f.add(c);
            f.add(c1);
            f.add(c2);
            //checkbox group is used to create a radio button. We create checkboxes but later add it in the checkbox group to create a radio group
            CheckboxGroup c3 = new CheckboxGroup();
            Checkbox c4 = new Checkbox( "vegatables",c3, true);
            Checkbox c5 = new Checkbox("vegatables",c3,false);
            Checkbox c6 = new Checkbox("vegatables",c3,false);
            c4.setBounds(25,170,50,50);
            c5.setBounds(25,215,50,50);
            c6.setBounds(25,250,50,50);
            f.add(c4);
            f.add(c5);
            f.add(c6);
}
    public static void main(String[] args) {
        System.out.println("Hello World!");
        new S48();
    }
}
