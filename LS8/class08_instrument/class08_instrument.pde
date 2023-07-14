import processing.sound.*;

SoundFile harp;
SoundFile voice;
SoundFile drumloop;
SoundFile explosion;
SoundFile guitar;
SoundFile iphone;

void setup(){
  size(800,800);
  harp = new SoundFile(this, "harp.mp3");
  voice = new SoundFile(this, "voice.mp3");
  drumloop = new SoundFile(this, "drumloop.mp3");
  explosion = new SoundFile(this, "explosion.mp3");
  guitar = new SoundFile(this, "guitar.mp3");
  iphone = new SoundFile(this, "iphone.mp3");s
}

void draw(){
  noStroke();
  text(" 使用键盘来进行作曲 ", 10, 20);
  fill(0,0,0,5);
  rect(0,0,width, height);
}

void keyPressed(){
  
  if(key == 'a'){
    noStroke();
    fill(random(255), random(255), random(255));
    rect(random(800), random(800), 150, 150);
    drumloop.stop();
    drumloop.play();
  } else if(key == 's'){
    noStroke();
    fill(random(255), random(255), random(255));
    rect(random(800), random(800), random(20,70), random(200));
    voice.play();  
} else if(key == 'd'){
    noStroke();
    fill(random(255), random(255), random(255));
    ellipse(random(800), random(800), random(100,200), random(100,200));
    harp.play();
} else if(key == 'j'){
    stroke(255);
    strokeWeight(5);
    noFill();
    float rad = random(200,800);
    ellipse(width/2,height/2,rad, rad);
    explosion.play();
  } else if(key == 'k'){
    stroke(random(255), random(255), random(255));
    line(random(800), random(800), random(800), random(800));
    strokeWeight(random(5,10));
    iphone.play();
  } else if(key == 'l'){
    fill(random(255), random(255), random(255),50);
    rect(0,0,width, height);
    guitar.stop();
    guitar.play();
  } 

}
