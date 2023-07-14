int degree = 45;

void setup(){
  size(900,900);
  background(255,255,255);
  noFill();
}


void draw(){
  stroke(0,0,0);
  
  float angle = radians(degree);
  translate(width/2, height/2);
  rotate(angle);
  scale(1,2);
  rect(0,0,100,100);
  
  degree += 1; 
  
}
