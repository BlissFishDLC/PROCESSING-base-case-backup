class Particle{
  float xPos;
  float yPos;

  float size;
  
  float speedX;
  float speedY;
  
  Particle(){
    xPos = random(0, width);
    yPos = random(0, height);
    
    speedX = random(-1,1);
    speedY = random(-1,1);
    size = 20.0;
    
    
  }
  
  void draw(){
    fill(255);
    ellipse(xPos, yPos, size, size);
    xPos += speedX;
    yPos += speedY;
    
    if(xPos < 0){
      xPos = 0;
      speedX = -1.0*speedX;
    }
    
    if(yPos < 0){
      yPos = 0;
      speedY = -1.0*speedY;
    }
    
    if(xPos > width){
      xPos = width;
      speedX = -1.0*speedX;
    }
    
        
    if(yPos > height){
      yPos = height;
      speedY = -1.0*speedY;
    }
  }
  
}
