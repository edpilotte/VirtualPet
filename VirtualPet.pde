
void setup(){
  size(500,500);
}
void draw(){
  triangle(340,360,320,390,450,430);
  pushMatrix();
  translate(width/2, height/2);
  rotate(PI/3.0);
  ellipse(60,0,200,80);
  popMatrix();
  ellipse(220,200,60,60);
  triangle(160,200,190,190,190,210);
  pushMatrix();
  translate(width/2, height/2);
  ellipse(80,0,170,30);
  rotate(PI/7.0);
  ellipse(80,0,170,30);
  popMatrix();
}

