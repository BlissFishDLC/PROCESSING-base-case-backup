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
  fill(0);
  rect(0,0,200,200);
  tint(0, 153, 204, 122);
  image(cam, 0, 0, width, height);
}
