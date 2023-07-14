void setup(){
  size(500,500);
}

void draw(){  
  background(0,0,0);
  for (int i = 0; i < 10; i++){
    noStroke();
    fill(255 - i*frameCount%255);
    rectMode(CENTER);
    int size = width - (i * 50);
    rect(width/2, height/2, size, size);   
  }
}
