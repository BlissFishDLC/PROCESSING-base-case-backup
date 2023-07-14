import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;

void setup(){
  size(640, 480);
  String[] cameras = Capture.list();
  printArray(cameras);
  video = new Capture(this, cameras[0]);
  opencv = new OpenCV(this, width, height);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  video.start();
}

void draw(){
  //if (video.available() == true) {
  //  video.read();
  //}
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  
  opencv.loadImage(video);
  image(video, 0, 0 );
  
  Rectangle[] faces = opencv.detect();
  println(faces.length);
}


void captureEvent(Capture c) {
  c.read();
}
