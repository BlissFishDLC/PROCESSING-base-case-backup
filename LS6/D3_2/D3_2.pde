void setup(){
  size(800,800);
  println(dist(0,0,800,800));
}

void draw(){
  if(mousePressed){
    drawStroke(mouseX, mouseY, pmouseX, pmouseY);
  }
}


void drawStroke(float x, float y, float px, float py){
  int offset = 4;
  float speed = dist(x,y,px,py);
  float thickness = map(speed, 0, 1130, 0, 100);
  strokeWeight(thickness + offset);
  line(x,y,px,py); 
  stroke(thickness);
  line(x + offset*2, y + offset*2, px+offset*2, py+offset*2);
  line(x - offset, y-offset, px-offset, py-offset);
}
