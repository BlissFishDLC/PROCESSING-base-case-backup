import spout.*;
Spout spout;


int degree = 45;

void setup(){
  size(900,900,P3D);
  background(255,255,255);
  noFill();
  
  spout = new Spout(this);
  spout.setSenderName("spout processing sender");
}


void draw(){
  stroke(frameCount%255, 255-frameCount%255, 255-frameCount%255);
  
  float angle = radians(degree);
  translate(width/2, height/2);
  rotate(frameCount % 4);
  rect(0,0,100,100);
  
  
  degree += 2; 
  
  spout.sendTexture();
  
  println(millis());
  println(frameCount);
  
}
