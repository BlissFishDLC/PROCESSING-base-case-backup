import controlP5.*;

ControlP5 gui;
Slider strokeSlider;
Slider rSlider;
Slider gSlider;
Slider bSlider;

int strokeSize = 100;
int r = 0;
int g = 0;
int b = 0;


void setup(){
  size(800,800);
  background(255,255,255);
  
  gui = new ControlP5(this);
  
  strokeSlider = gui.addSlider("strokeSize").setPosition(10,10).setRange(100, 500);
  rSlider = gui.addSlider("r").setPosition(10,30).setRange(0,255);
  gSlider = gui.addSlider("g").setPosition(10,50).setRange(0,255);
  bSlider = gui.addSlider("b").setPosition(10,70).setRange(0,255);
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
  stroke(r,g,b);
  int offset = 4;
  float speed = dist(x,y,px,py);
  float thickness = map(speed, 0, 1130, 0, strokeSize);
  strokeWeight(thickness + offset);
  line(x,y,px,py); 
  strokeWeight(thickness);
  line(x + offset*2, y + offset*2, px+offset*2, py+offset*2);
  line(x - offset, y-offset, px-offset, py-offset);
}
