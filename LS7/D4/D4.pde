import processing.sound.*;

SoundFile song;
Waveform waveform;

int samples = 100;

public void setup() {
  fullScreen();
  background(255);

  song = new SoundFile(this, "groove.mp3");
  song.loop();

  waveform = new Waveform(this, samples);
  waveform.input(song);
}

public void draw() {
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  waveform.analyze();
  
  beginShape();
  for(int i = 0; i < samples; i++){
    vertex(
      map(i, 0, samples, 0, width),
      map(waveform.data[i], -1, 1, 0, height)
    );
  }
  endShape();
}
