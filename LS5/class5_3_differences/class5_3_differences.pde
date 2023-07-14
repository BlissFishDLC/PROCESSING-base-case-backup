import processing.video.*;

Capture cam; 
PImage pcam; // one blank img
PImage img; // another blank img 

void setup() {
  size(640, 480);
  
  String[] cameras = Capture.list();
  cam = new Capture(this, cameras[0]);
  cam.start();
  
  pcam = createImage(640, 480, RGB); // ARGB
  img = createImage(640, 480, RGB); // ARGB
}

void draw() {
  background(0);
  
  if (cam.available() == true) {
    cam.read();
  }
  
  cam.loadPixels();
  pcam.loadPixels();
  img.loadPixels();
  for (int y = 0; y < cam.height; y ++) {
    for (int x = 0; x < cam.width; x ++) {
       int index = x + y*cam.width;
       
       color currC = cam.pixels[index];
       color prevC = pcam.pixels[index];
       
       float r = abs(red(currC) - red(prevC));
       float g = abs(green(currC) - green(prevC));
       float b = abs(blue(currC) - blue(prevC));
       float diff = (r + g + b) / 3;
       
       if (diff > 60) {
         img.pixels[index] = currC;  
       } else {
         img.pixels[index] = color(0);
       }
       // comment out the line below to see the actual pixel colors.
       img.pixels[index] = color(r, g, b); // this visualizes the differences 
    }
  }
  img.updatePixels();
  image(img, 0, 0);

  // store the current frame as a previous frame!
  pcam = cam.get();
}
