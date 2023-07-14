import processing.video.*;

Capture cam; 

void setup() {
  size(640, 480);
  
  String[] cameras = Capture.list();
  //printArray(cameras);
  cam = new Capture(this, cameras[0]);
  cam.start();
}

void draw() {
  background(0);
  
  if (cam.available() == true) {
    cam.read();
  }
  
  cam.loadPixels();
  
  int gridSize = 30;
  for (int y = 0; y < cam.height; y += gridSize) {
    for (int x = 0; x < cam.width; x += gridSize) {
       int index = x + y*cam.width;
       color currC = cam.pixels[index];
       
       float r = red(currC);
       float g = green(currC);
       float b = blue(currC);
       
       float avg = (r + g + b) / 3;
       
       float diameter = map(avg, 0, 255, 1, gridSize);
       noStroke();
       fill(255);
       ellipse(x, y, diameter, diameter);
    }
  }
}
