import org.openkinect.freenect.*;
import org.openkinect.freenect2.*;
import org.openkinect.processing.*;
import org.openkinect.tests.*;

Kinect2 kinect2;

ParticleManager pManager;
int timer=5;
int interval=10;

PImage img; 

void setup(){
  size(512, 424);
  pManager = new ParticleManager();
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
  
  float sumX = 0;
  float sumY = 0;
  float totalPixels = 0;
  
  
  
  for (int x = 0; x < kinect2.depthWidth; x ++){
    for (int y = 0; y < kinect2.depthHeight; y ++){
      int index = x + y * kinect2.depthWidth;
      
      int distance = depth[index];
      
      if(distance > 10 && distance < 800){
        img.pixels[index] = color(0,0,200);
         sumX += x;
         sumY += y;
         totalPixels ++;
         
         
         
      } else {
        img.pixels[index] = color(0,0,0);
      }
    }
  }
  
  img.updatePixels();
  image(img,0,0);
  
  float avgX = sumX / totalPixels;
  float avgY = sumY / totalPixels;
  fill(200,0,0);
  pManager.updater(int(avgX),int(avgY));
  pManager.display();
   
  if(millis()-timer>interval){
    pManager.add(int(avgX),int(avgY));
    timer=millis();
    interval = int(random(10,20));
  }

}
