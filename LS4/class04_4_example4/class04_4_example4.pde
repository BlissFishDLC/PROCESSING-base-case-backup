import codeanticode.syphon.*;
SyphonServer server;

void setup(){
  size(800,800,P3D);
  server = new SyphonServer(this, "Processing Syphon");

}

void draw(){
  background(0);
  noStroke();
  float count = 1;
  int size = 50;
  float x = 0;
  float widthSize = size*(abs(x-mouseX)/width+0.1);
  float heightSize = size*(abs(x-mouseY)/height+0.1);
  
  for (x = 0; x < width; x += widthSize){
        widthSize = size*(abs(x-mouseX)/width*2+0.1);
        if(widthSize > size){
          widthSize = size;
        } 
        
        if(count % 2 == 0){
          fill(0,0,0);
          for(float y = 0; y < height; y += heightSize*2){
            heightSize = size*(abs(x-mouseY)/height*2+0.1);
            fill(255,255-frameCount%255,frameCount%255);
          
            rect(x,y,widthSize, heightSize);
          }
        } else {
          for (float y = heightSize; y < height; y += heightSize*2){
            heightSize = size*(abs(x-mouseY)/height*2+0.1);
            fill(frameCount%255,255,255-frameCount%255);
            
            rect(x,y,widthSize,heightSize);
          }
        } 
        count ++;
  }
  
      server.sendScreen();

}
