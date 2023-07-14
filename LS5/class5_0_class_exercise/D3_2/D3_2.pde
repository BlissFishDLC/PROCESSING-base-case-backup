color backgroundCol = color(0,0,255);

void setup(){
  size(600,400);
  float r = red(backgroundCol);
  float g = green(backgroundCol);
  float b = blue(backgroundCol);
  println(r);
  println(g);
  println(b);
}

void draw(){
  background( backgroundCol);

}
