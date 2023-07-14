int boxSize = 50;

void setup(){
  size(800,800);
}

void draw(){
  background(255,255,255);
  rect(mouseX, mouseY, boxSize, boxSize);
}

void mousePressed(){
  println(mouseX);
  println(mouseY);
  boxSize = boxSize + 10;
}
