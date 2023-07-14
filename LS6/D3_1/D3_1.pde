void setup(){
  size(800,800);
  background(0);
}


void draw(){
  fill(255);
  stroke(255);
  if(mousePressed){
    ellipse(mouseX, mouseY,10,10);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
