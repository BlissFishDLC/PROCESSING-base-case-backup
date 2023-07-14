void setup(){
  fullScreen();
  colorMode(HSB,100,100,100);
}

void draw(){
  noStroke();
  fill(0, 0,0,5);
  rect(0,0,width,height);
  //stroke(255);
      beginShape();
      //vertex(-10, height);
      for(int i=0;i<width+20;i+=20){
        float n=noise(i*0.001,frameCount*0.02);
        float y=map(n,0,1,0,height);
        //stroke(n*100,100,100);
        fill(n*100,100,100,20);
        //vertex(i, width/2);     
         vertex(i,y);
      }
      //vertex(width+11,height);
      endShape(CLOSE);
  }
