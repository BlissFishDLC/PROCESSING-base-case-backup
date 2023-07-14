void setup(){
   fullScreen();
   
}

void draw(){
  strokeWeight(3);
  background(0);
  beginShape();
    vertex(0,0);
    vertex(width, height);
    vertex(mouseX, mouseY);
  endShape();
}
