void setup(){
  size(900,900);
  
}

void draw(){

  
  colorMode(RGB);
  noStroke();
  fill(0,frameCount % 50);
  rect(0, 0, 1800, 1800);

  
  pushMatrix();
    float col = random(400);
    noFill();
    strokeWeight(1);
    colorMode(HSB,400);
    stroke(col,400-col,400);
    translate(450, 450);
    rotate(sin( millis() * 500 ) * 3 );
    translate(100,0);
    rectMode(CENTER);
    rect(20,54,40,50);
    ellipse(0,0,400,400);
    translate(100,0);
    rect(20,54,40,50);
    ellipse(0,0,400,400);
    translate(-100,0);
    rect(20,54,40,50);
    ellipse(0,0,400,400);
  popMatrix();
}
