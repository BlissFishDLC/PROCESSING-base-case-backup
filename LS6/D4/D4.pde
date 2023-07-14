void setup(){
  size(800,800);
  background(255,255,255);
}


void draw(){
   if(mousePressed){
   
     if(mouseButton == LEFT){
       drawStroke(mouseX, mouseY, pmouseX, pmouseY);
     } else if (mouseButton == RIGHT){
       drop(mouseX, mouseY);
     }
   }

}


void drop(float x, float y){
  noStroke();
  float r = map(x, 0, 800, 0, 255);
  float g = map(y, 0, 800, 0, 255);
  fill(r,g,g-40,3);
  for (int i = 0; i < 280; i += 3){
    ellipse(x, y, i-180 , i-180);
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
