float angle = 0;
void setup(){
  size(800,800);
  strokeWeight(4);
}

void draw(){
  background(50);
  noStroke();
  fill(255,0,0);
  ellipse(width/2, height/2, 10, 10);
  
  
  for(int i = 15; i < 5000; i +=15){
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(i + angle *2 ));
    noFill();
    float r = map(i, 15, 5000, 0, 2);
    float b = map(i, 15, 5000, 100, 355);
    stroke(r*100, 20, b - 100);
    ellipse(0, 0, i + 20, i );
    popMatrix();
    
    angle += 0.002;
  }
}
