class Particle{
  float posX;
  float posY;
  
  float size; 
  
  Particle(){
    posX = 0;
    posY = 0;
    size = 20;
  }
  
  void draw(float x, float y){
     ellipse(x, y, size,size);
     
  }
}
