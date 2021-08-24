
void setup(){
  size(500,500);
}
void draw(){
  pushMatrix();
  translate(width/2, height/2);
  rotate(PI/3.0);
  ellipse(60,0,200,80);
  popMatrix();
  ellipse(220,200,60,60);
}

