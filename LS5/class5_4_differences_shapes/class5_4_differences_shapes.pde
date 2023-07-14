import processing.video.*;

Capture cam; 
PImage pcam; // a blank img 

void setup() {
  size(640, 480);
  
  String[] cameras = Capture.list();
  cam = new Capture(this, cameras[0]);
  cam.start();
  
  pcam = createImage(640, 480, RGB); // ARGB
  
  background(255);
}

void draw() {
  //background(255);
  
  // the code below is to draw(clear) background with opacity
  noStroke();
  fill(255, 10); // opacity added
  rect(0, 0, width, height); // fills the entire canvas
  
  if (cam.available() == true) {
    cam.read();
  }
  
  cam.loadPixels();
  pcam.loadPixels();
  for (int y = 0; y < cam.height; y++) {
    for (int x = 0; x < cam.width; x++) {
       int index = x + y*cam.width;
       
       color currC = cam.pixels[index];
       color prevC = pcam.pixels[index];
       
       float r = abs(red(currC) - red(prevC));
       float g = abs(green(currC) - green(prevC));
       float b = abs(blue(currC) - blue(prevC));
       float diff = (r + g + b) / 3;
       
       if (diff > 70 && random(1) < 0.30) {
         float s = random(1, 30);
         noStroke();
         fill(currC);
         //ellipse(x, y, s, s);
         beginShape();
         vertex(x + random(-s, s), y + random(-s, s));
         vertex(x + random(-s, s), y + random(-s, s));
         vertex(x + random(-s, s), y + random(-s, s));
         endShape(CLOSE);
       }
    }
  }

  // store the current frame as a previous frame!
  pcam = cam.get();
}
