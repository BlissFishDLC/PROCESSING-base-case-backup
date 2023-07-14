import org.openkinect.freenect.*;
import org.openkinect.freenect2.*;
import org.openkinect.processing.*;
import org.openkinect.tests.*;

Kinect2 kinect2;

void setup(){
  size(512, 424,P3D);
  kinect2 = new Kinect2(this);
  kinect2.initDepth();
  kinect2.initDevice();
}

void draw(){
  background(0);
  PImage img = kinect2.getDepthImage();
  //image(img, 0, 0);
  
  int step = 10;
  
  for(int y = 0; y < height; y+=step){
    for(int x = 0; x < width; x+= step){
      int index = x + y * img.width;
      int col = img.pixels[index];
      float b = brightness(img.pixels[index]);
      float z = b;
      //fill(b);
      noStroke();
      pushMatrix();
      translate(x,y,z);
      
      rect(0,0,step/2,step/2);
      popMatrix();
    }
  }
}
