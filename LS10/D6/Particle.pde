class Particle{
  float xPos;
  float yPos;

  float size;
  
  float speedX;
  float speedY;
  
  float r;
  float g; 
  float b;
  
  Particle(){
    xPos = random(0, width);
    yPos = random(0, height);
    
    speedX = random(-1,1);
    speedY = random(-1,1);
    size = 20.0;
    
    r = random(255);
    g = random(255);
    b = random(255);
  }
  
  void draw(){
    fill(r,g,b);
    ellipse(xPos, yPos, size, size);
    xPos += speedX;
    yPos += speedY;
    
    float distance = dist(xPos,yPos, mouseX, mouseY);
    float max = dist(0,0,800,800);
    float col = map(distance, 0, max, 0, 255);
    
    r = 255-col;
    g = 0;
    b = col;
  
    if(mousePressed){
       float xdist = mouseX - xPos;
       float ydist = mouseY - yPos;
       
       xPos += xdist*random(1);
       yPos += ydist*random(1);
    }
    
    
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
