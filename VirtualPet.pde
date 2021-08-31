
import cc.arduino.*;
import org.firmata.*;

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup(){
  size(500,500);
  arduino = new Arduino(this, Arduino.list()[1], 57600);
}
void draw(){
  //arduino movement
  background(192);
  int y = arduino.analogRead(5);
  int x = arduino.analogRead(5);
  System.out.println(y);
  System.out.println(x);
  if (y <= 180) {
    y = 180; }
  if (y >= 220) {
    y = 220; }
  fill(86,114,240);
  //tail
  triangle(340,360,320,390,450,2*y);
  //body
  pushMatrix();
  translate(width/2, height/2);
  rotate(PI/3.0);
  fill(111,132,242);
  ellipse(60,0,200,80);
  popMatrix();
  //head
  ellipse(220,200,60,60);
  //wings
  pushMatrix();
  fill(86,114,240);
  translate(width/2, height/2);
  ellipse(80,0,170,30);
  rotate(PI/7.0);
  ellipse(80,0,170,30);
  popMatrix();
  fill(144,147,163);
  //beak
  triangle(160,200,190,190,190,210);
  fill(0,0,0);
  //eye
  ellipse(210,190,5,5);
  //hat
  ellipse(220,170,80,10);
  rect(200,160,40,10);
  ellipse(220,160,40,15);
}
