import processing.video.*;

Capture cam;

void setup(){
  size(640,480);
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
  int pixelSize = 40;
  
  for (int y = 0; y < height; y += pixelSize){
     for(int x = 0; x < width; x += pixelSize){
       int index = x + (y * cam.width);
       color currentColor = cam.pixels[index];
       
       float r = red(currentColor);
       float g = green(currentColor);
       float b = blue(currentColor);
       
       float avg = (r + g + b) / 3;
       
       float diameter = map(avg, 0, 255, 1, pixelSize);
       //fill(currentColor);
       noStroke();
       fill(0);
       ellipse(x,y,diameter,diameter);
     }
  }

}
