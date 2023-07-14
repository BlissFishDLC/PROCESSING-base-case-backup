int degree = 45;
int x = 100;

void setup(){
  size(900,900);
  background(255,255,255);
  noFill();
}


void draw(){
  stroke(0,0,0);
  
  float angle = radians(degree);
  translate(x, height/2);
  rotate(angle);
  rect(0,0,100,100);
    
  degree += 1; 
  x += 1;
  
}
