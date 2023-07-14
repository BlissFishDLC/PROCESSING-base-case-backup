int degree = 45;

void setup(){
  size(900,900);
  background(255,255,255);
  noFill();
}


void draw(){
  stroke(frameCount%255, 255-frameCount%255, 255-frameCount%255);
  
  float angle = radians(degree);
  translate(width/2, height/2);
  rotate(frameCount % 4);
  rect(0,0,100,100);
  
  
  degree += 2; 
  
  println(millis());
  println(frameCount);
  
}
