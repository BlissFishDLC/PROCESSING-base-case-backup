
Particle [] p;

void setup(){
  
  size(800,800);
  
  p = new Particle[100];
  
  for(int i = 0; i < 100; i++){
    p[i] = new Particle();
  }

}

void draw(){
  background(0,0,0);
  for(int i = 0; i < 100; i++){
    p[i].draw();
  }
}
