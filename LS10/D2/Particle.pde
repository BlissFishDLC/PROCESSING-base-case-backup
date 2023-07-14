class Particle{
  float xPos;
  float yPos;

  float size;
  
  
  Particle(){
    xPos = random(0, width);
    yPos = random(0, height);
    
    size = 20.0;
  }
  
  void draw(){
    fill(255);
    ellipse(xPos, yPos, size, size);
  }
  
}
