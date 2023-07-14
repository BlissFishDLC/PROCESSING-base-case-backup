import processing.video.*;

Capture cam; 
PImage img; // a blank img

void setup() {
  size(640, 480);

  String[] cameras = Capture.list();
  //printArray(cameras);
  cam = new Capture(this, cameras[0]);
  cam.start();

  img = createImage(640, 480, RGB); // ARGB
}

void draw() {
  background(0);

  if (cam.available() == true) {
    cam.read();
  }

  cam.loadPixels();

  int gridSize = 15;
  for (int y = 0; y < cam.height; y += gridSize) {
    stroke(255);
    strokeWeight(3);
    noFill();
    beginShape();
    for (int x = 0; x < cam.width; x += gridSize) {
      int index = x + y*cam.width;
      color currC = cam.pixels[index];

      float r = red(currC);
      float g = green(currC);
      float b = blue(currC);

      float avg = (r + g + b) / 3;

      float yOffset = map(avg, 0, 255, 1, gridSize*2);
      vertex(x, y + yOffset);
    }
    endShape();
  }
}
