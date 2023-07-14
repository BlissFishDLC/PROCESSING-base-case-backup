int xpos = 0;

void setup(){
  size(800,800);
}

void draw(){
  background(255,255,255);
  rect(xpos, 0, 50,50);
}

void keyPressed(){
  println(key);
  
  if(key == 'd'){
    xpos = xpos + 2;
  }
  
  if(key == 'a'){
    xpos = xpos -2;
  }
}
