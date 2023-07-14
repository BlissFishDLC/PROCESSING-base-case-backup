import processing.video.*;
import codeanticode.syphon.*;
SyphonServer server;

Capture cam;

void setup(){
  size(640,480,P3D);
  strokeWeight(5);
  
  String[] cameras = Capture.list();
  cam = new Capture(this, cameras[0]);
  cam.start();
}

void draw(){
  background(255,255,255);
  if(cam.available()){
    cam.read();
  }
  
  cam.loadPixels();
  int pixelSize = 10;
  
  for (int y = 0; y < height; y += pixelSize){
     for(int x = 0; x < width; x += pixelSize){
       int index = x + (y * cam.width);
       color currentColor = cam.pixels[index];
       
       float r = red(currentColor);
       float g = green(currentColor);
       float b = blue(currentColor);
       
       float avg = (r + g + b) / 3;
       
       if (avg < 100){
         stroke(0,0,0);
         line(x, y, x + pixelSize, y + pixelSize);
       } else {
         stroke(0,0,0);
         line(x + pixelSize, y, x, y + pixelSize);
       }
  
     }
  }

}
