void setup(){
  size(600,600);
}

void draw(){
  background(0);
  fill(200,210,240);  
  noStroke();
  ellipse(220,200,50,300);
  ellipse(380,200,50,300);
  ellipse(300,300,300,200);
  fill(255,0,0);
  float disX = map(mouseX, 0,600,-10,10);
  float disY = map(mouseY, 0,600,-10,10);
  ellipse(200+disX,300+disY,10,10);
  ellipse(400+disX,300+disY,10,10);
} 
