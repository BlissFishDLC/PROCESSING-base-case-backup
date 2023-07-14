void setup() {
  size(800,800);
  background(255);
  noStroke();
}

void draw() {
  drop(mouseX, mouseY);
  //drop(500, 500);
}

void drop(float x, float y){
  float r = map(x, 0, 800, 0, 255);
  float g = map(y, 0, 800, 0, 255);
  fill(r,g,g-40,3);
  for (int i = 0; i < 280; i += 3){
    ellipse(x, y, i-180 , i-180);
  } 
}
