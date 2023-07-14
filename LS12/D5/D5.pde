import org.openkinect.freenect.*;
import org.openkinect.freenect2.*;
import org.openkinect.processing.*;
import org.openkinect.tests.*;

Kinect2 kinect2;

PImage img; 

void setup(){
  size(512, 424);
  kinect2 = new Kinect2(this);
  kinect2.initDepth();
  kinect2.initDevice();
  img = createImage(kinect2.depthWidth, kinect2.depthHeight, RGB);
}

void draw(){
  background(0);
  //PImage img = kinect2.getDepthImage();
  //image(img, 0, 0);
  img.loadPixels();
  
  int [] depth = kinect2.getRawDepth();
  
  for (int x = 0; x < kinect2.depthWidth; x ++){
    for (int y = 0; y < kinect2.depthHeight; y ++){
      int index = x + y * kinect2.depthWidth;
      
      int distance = depth[index];
      
      if(distance > 300 && distance < 1500){
        img.pixels[index] = color(0,0,200);
 
      } else {
        img.pixels[index] = color(0,0,0);
      }
    }
  }
  
  img.updatePixels();
  image(img,0,0);
}
