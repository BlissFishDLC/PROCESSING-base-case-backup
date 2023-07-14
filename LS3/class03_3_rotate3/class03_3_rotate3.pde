void setup() {
  size(600,600);
  background(255);
  noFill();
}


void draw() {
  stroke(frameCount%255);
  translate(300,300);
  
  rotate(radians(frameCount%180));
  
  
  ellipse(-100,0,20,(frameCount%300));
  ellipse(-50,0,20,(frameCount%200));
  ellipse(50,0,20,(frameCount%100));
  ellipse(100,0,20,(frameCount%400));
}
