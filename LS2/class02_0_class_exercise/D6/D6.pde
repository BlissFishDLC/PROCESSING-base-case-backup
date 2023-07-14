int xpos = 0;

void setup(){
  size(800,800);
}

void draw(){
  background(255,255,255);
  rect(xpos, 100, 50,50);
  xpos = xpos + 1;
  println(xpos);
}
