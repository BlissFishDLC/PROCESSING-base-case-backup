import processing.video.*;

Capture cam;

PImage unicorn;
PImage water;
PImage crying;
PImage girlSinger;
PImage ghost;
PImage devil;
PImage angelHalo;


int pixelSize = 20;

void setup(){
  
  unicorn = loadImage("Unicorn.png");
  water = loadImage("Water.png");
  crying = loadImage("Crying.png");
  girlSinger = loadImage("GirlSinger.png");
  ghost = loadImage("Ghost.png");
  angelHalo = loadImage("AngelHalo.png");
  devil = loadImage("Devil.png");
  
  size(640,480);
  String[] cameras = Capture.list();
  cam = new Capture(this, cameras[0]);
  cam.start();
}


void draw(){

  background(255);
  if(cam.available()){
    cam.read();
  }
  
  cam.loadPixels();
  
   for (int y = 0; y < height; y += pixelSize){
     for(int x = 0; x < width; x += pixelSize){
       int index = x + (y * cam.width);
       color currentColor = cam.pixels[index];
       
       float r = red(currentColor);
       float g = green(currentColor);
       float b = blue(currentColor);
       
       float avg = (r + g + b) / 3;
       
       if(avg <= 40){
         image(crying, x, y, pixelSize, pixelSize);
       } else if (avg>40 && avg <= 80){
         image(girlSinger, x, y, pixelSize, pixelSize);
       } else if  (avg > 80 && avg <= 120){
         image(devil, x, y, pixelSize, pixelSize);
       } else if (avg > 120 && avg <= 180){
         image(water, x, y, pixelSize, pixelSize);
       } else {
         image(unicorn, x, y, pixelSize, pixelSize);
       }
           
     }
   }
}
