float move = 0;

void setup(){
  size(800,800);
  
}

void draw(){
  background(0);
  noFill();
  stroke(255);
  strokeWeight(3);
    for (int i = 0; i < 50; i += 2){
      pushMatrix();
        translate(200+move%400,height/2);
        ellipse(0,0,10*i,10*i);
      popMatrix();
      
      pushMatrix();
        translate(width-200+((move*-1)%400),height/2);
        ellipse(0,0,10*i,10*i);
      popMatrix();  
      move += 0.1;
    }
}
