import processing.sound.*;

SoundFile song;
Waveform waveform;
int samples = 100;

void setup(){
  fullScreen();
  
  song = new SoundFile(this,"groove.mp3");
  song.loop();
  
  waveform = new Waveform(this,samples);
  waveform.input(song);
  colorMode(HSB,100);
}

void draw(){
  fill(0,0,0,10);
  rect(0,0,width,height);
  strokeWeight(3);
  noStroke();
  waveform.analyze();
  printArray(waveform.data);
  beginShape();
    for(int i =0;i<samples;i++){
      float x = map(i,0,100,0,width);
      float y = map(waveform.data[i],-1,1,0,height);
      fill(y*100,100,100,20);
      vertex(x,y);
    }
    
     for(int i=width;i>0;i-=20){
        float n=noise(i*0.001,frameCount*0.02);
        float y=map(n,0,1,0,height);

        fill(n*100,100,100,20);
      
        vertex(i,y);
      }
  endShape();
}
