import processing.sound.*;

Pulse pulse;
WhiteNoise noise;


void setup(){
  size(800,800);
  
  pulse = new Pulse(this);
  // pulse waves can appear very loud to the human ear, so make it a bit more quiet
  pulse.amp(0.3);
  
  
  noise = new WhiteNoise(this);
  //noise.play();
  
}

void draw(){
  
  fill(0,0,0,10);
  rect(0,0,width, height);
  makePulse();
  makeNoise();
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
