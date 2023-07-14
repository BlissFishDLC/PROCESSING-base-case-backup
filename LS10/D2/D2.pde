//Particle p1;
//Particle p2;
//Particle p3;

Particle [] p;

void setup(){
  
  size(800,800);
  background(0,0,0);
  p = new Particle[30];
  for(int i = 0; i < 30; i++){
    p[i] = new Particle();
  }
  //p1 = new Particle();
  //p2 = new Particle();
  //p3 = new Particle();
  //print(p1.xPos);
}

void draw(){
  for(int i = 0; i < 30; i++){
    p[i].draw();
  }
  //p1.draw();
  //p2.draw();
  //p3.draw();
}
