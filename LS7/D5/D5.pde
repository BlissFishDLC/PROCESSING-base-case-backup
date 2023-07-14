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
}

void draw(){
  background(0,0,0);
  strokeWeight(3);
  stroke(255,255,255);
  
  waveform.analyze();
  printArray(waveform.data);
  beginShape();
    for(int i =0;i<samples;i++){
      float x = map(i,0,100,0,width);
      float y = map(waveform.data[i],-1,1,0,height);
      
      vertex(x,y);
    }
  endShape();
}
