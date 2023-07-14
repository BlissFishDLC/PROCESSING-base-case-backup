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
  
 
  //image(cam, 0, 0, width, height);
  
  cam.loadPixels();
  printArray(cam.pixels[0]);
  println(red(cam.pixels[0]));
  println(green(cam.pixels[0]));
  println(blue(cam.pixels[0]));
  
  int pixelSize = 20;
  
  for (int y = 0; y < height; y += pixelSize){
     for(int x = 0; x < width; x += pixelSize){
       int index = x + (y * cam.width);
       color currentColor = cam.pixels[index];
       fill(currentColor);
       ellipse(x,y,pixelSize,pixelSize);
     }
  }

}
