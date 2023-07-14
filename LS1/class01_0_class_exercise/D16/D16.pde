void setup(){
  size(600,600);
}


void draw(){
  background(0,0,0);
    
  noStroke();
  
  fill(200,210,240);
  ellipse(220,200,50,300);
  ellipse(380,200,50,300);
  
  ellipse(300,300,300,200);
  
  fill(255,0,0);
  
  float dX = map(mouseX, 0, 600, -10, 10);
  float dY = map(mouseY, 0, 600, -10, 10);
  
  ellipse(200+dX, 300+dY, 10, 10);
  ellipse(400+dX, 300+dY, 10, 10);
} 
