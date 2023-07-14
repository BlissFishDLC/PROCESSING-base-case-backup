void setup(){
  size(800,800);
  colorMode(HSB);
}

void draw(){  
  background(0,0,0);
  translate(width/2, height/2);
  for (int i = 0; i < 14; i++){
    noStroke();
    fill(255 - i*frameCount%255, 100, 255);
    rotate(radians(frameCount % 180));
    rectMode(CENTER);
    int size = width + 200 - (i * 50);
    rect(100,-200, size, size);  
    
  }
}
