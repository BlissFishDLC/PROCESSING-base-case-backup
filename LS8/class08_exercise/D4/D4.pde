import processing.sound.*;

SoundFile sound;
Amplitude rms;

Delay delay;


Pulse pulse;
WhiteNoise noise;

void setup(){
  size(800,800);
  
  sound = new SoundFile(this, "beat.aiff");
  sound.loop();
  
  rms = new Amplitude(this);
  rms.input(sound);
  
  delay = new Delay(this);
  delay.process(sound, 5.0);
  
  pulse = new Pulse(this);
  pulse.amp(0.3);
  
  
  noise = new WhiteNoise(this);

}

void draw(){
  
  fill(0,0,0,10);
  rect(0,0,width, height);
  
  makePulse();
  makeNoise();

  soundEffect();
  pattern();
}


void soundEffect(){
  float position = map(mouseX, 0, width, -1.0, 1.0);
  sound.pan(position);
  // Map mouseX from 0 to 0.8 for the amount of delay feedback
  float fb = map(mouseY, 0, height, 0.0, 0.8);
  delay.feedback(fb);
}



void pattern(){
  noFill();
  stroke(255);
  float amp = rms.analyze();
  
  float deg = map(mouseX, 0, width, 1, 80);
  for(int i = 0; i <= 360; i += deg){
    pushMatrix(); 
    translate(width/2, height/2);
    rotate(radians(i));
    ellipse(400-400*amp, 0, amp*800, amp*800);
    popMatrix();
  }
}


void makePulse(){
  float frequency = map(mouseX, 0, width, 20.0, 500.0);
  pulse.freq(frequency);
 
  float pulseWidth = map(mouseY, 0, height, 0.0, 1.0);
  pulse.width(pulseWidth);
}


void makeNoise(){
  noise.pan(map(mouseX, 0, width, 1.0, -1.0));
}


void keyPressed() {
  println(key);
  if(key == 'a'){
    pulse.play();
  } else if(key == 'd'){
    noise.play();
  } else if(key == 's'){
    pulse.stop();
  } else if (key == 'f'){
    noise.stop();
  }
}
