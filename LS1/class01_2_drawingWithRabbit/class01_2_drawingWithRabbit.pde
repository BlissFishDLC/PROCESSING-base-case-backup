void setup(){
  size(800,800);
  background(0);
}


void draw(){
  if(mousePressed){
    noStroke();
    fill(255,255,255,random(100));
  //stroke(255);
    ellipse(mouseX-60,mouseY-80,50,150);
    ellipse(mouseX+60,mouseY-80,50,150);
    ellipse(mouseX,mouseY,200,150);
    fill(200,0,0);
    ellipse(mouseX-60,mouseY-10,10,10);
    ellipse(mouseX+60,mouseY-10,10,10);
  }
}
