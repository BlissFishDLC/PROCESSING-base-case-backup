int angle = 1;

void setup(){
  size(900,900);
  background(0);
  noFill();
  rectMode(CENTER);
  colorMode(HSB);
}

void draw(){
  
  stroke(frameCount%255,255-frameCount%255,255-frameCount%255);
  translate(450,450);
  scale(frameCount%4);
  scale(2);
  rotate(radians(frameCount%360));
  rect(0,0,100,100);
  
  println(frameCount +"," +  millis());
}
