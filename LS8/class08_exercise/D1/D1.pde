import processing.sound.*;

SoundFile sound;
Amplitude rms;

void setup(){
  size(800,800);
  
  sound = new SoundFile(this, "beat.aiff");
  sound.loop();
  
  rms = new Amplitude(this);
  rms.input(sound);
}

void draw(){
  background(255,255,255);
  
  float amp = rms.analyze();
  
  float deg = map(mouseX, 0, width, 1, 80);
  for(int i = 0; i <= 360; i += deg){
    pushMatrix(); 
    translate(width/2, height/2);
    rotate(radians(i));
    ellipse(400-400*amp, 0, amp*600, amp*600);
    popMatrix();
  }
  
  //ellipse(amp*800, height/2, amp*600, amp*600);
}  
