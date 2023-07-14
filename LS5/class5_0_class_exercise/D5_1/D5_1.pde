import processing.video.*;

Capture cam;

void setup(){
  size(640,480);
  String[] cameras = Capture.list();
  cam = new Capture(this, cameras[0]);
  cam.start();
}

void draw(){
  if(cam.available()){
    cam.read();
  }
  
  cam.loadPixels();
  int pixelSize = 10;
  
  for (int y = 0; y < height; y += pixelSize){
     for(int x = 0; x < width; x += pixelSize){
       int index = x + (y * cam.width);
       color currentColor = cam.pixels[index];
       
       float curBrightness = brightness(currentColor);
       
       if(curBrightness < 150){
         println("hit");
         fill(0,0,150);  
       } else {
         fill(150,0,0);
       }        
       //fill(currentColor);
       noStroke();
       rect(x,y,pixelSize,pixelSize);
     }
  }

}
