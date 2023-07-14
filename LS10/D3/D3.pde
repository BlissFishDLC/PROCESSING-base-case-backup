
Particle [] p;

void setup(){
  
  size(800,800);
  background(0,0,0);
  p = new Particle[30];
  for(int i = 0; i < 30; i++){
    p[i] = new Particle();
  }

}

void draw(){
  for(int i = 0; i < 30; i++){
    p[i].draw();
  }

}
