/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.s50menu;
import java.awt.*;
import java.awt.event.*;
/**
 *
 * @author Parin
 */
public class S50menu {
S50menu(){
    Frame f = new Frame();
    f.setVisible(true);
    f.setLayout(null);
    f.setSize(1000,1000);
    //menu bar is a navagation bar at the top
    MenuBar m = new MenuBar();
    Menu m1 = new Menu("Home");
    Menu m2 = new Menu("File");
    MenuItem i1 = new MenuItem("Copy");
    MenuItem i2 = new MenuItem("Paste");
    MenuItem i3 = new MenuItem("Cut");
    m1.add(i1);
    m1.add(i2);
    m2.add(i3);
    m1.add(m2);
    m.add(m1);
    f.setMenuBar(m);
    //pop up menu creates menu item when anywhere clicked on the screen
    PopupMenu p = new PopupMenu("File");
    MenuItem cut = new MenuItem("Cut");
      MenuItem copy = new MenuItem("Copy");
        MenuItem paste = new MenuItem("Paste");
        p.add(cut);
        p.add(cut);
        p.add(copy);
        p.add(paste);
        //whenever we want to click and we want something to happen
        //in short, we need to use add action listener, or add mouse listener
       f.addMouseListener(new MouseAdapter(){
       public void mouseClicked(MouseEvent e){
       p.show(f,e.getX(),e.getY());
       }    
       }); 
               f.add(p);
    
    
    

    
            
}
    public static void main(String[] args) {
        System.out.println("Hello World!");
        new S50menu();
        
    }
}
