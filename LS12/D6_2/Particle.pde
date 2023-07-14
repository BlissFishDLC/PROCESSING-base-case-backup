class Particle{
 
  PVector position;
  PVector velocity;
  PVector acceleration;
  PVector gravity;
  float size;
  int fillIn;
  int followTime;
  PVector attractor;
  

   
  Particle(int xPos, int yPos){
    size = random(2,24);
    position = new PVector(xPos,yPos);
    velocity = new PVector(0,0);
    gravity = new PVector(0,0.002);
    acceleration = new PVector(random(-0.20,0.20),random(-0.20,0.20));
    fillIn = int(random(255,255));
    attractor = new PVector(0,0);
    followTime = millis();
  }

  
  //
  
   
  void update(int followX, int followY){
    if(millis()-followTime<2000 && millis()-followTime>100){
      attractor.set(followX,followY,0);
      attractor.sub(position);
      attractor.div(5);
      acceleration.add(attractor);
      acceleration.div(1000);
    }else{
  
    
   
 
    }
    acceleration.add(gravity);   
    velocity.add(acceleration);
    position.add(velocity);
    fillIn--;
    
   
  }
   
  void draw(){
    pushStyle();
    fill(255, 0, 255);
    noStroke();
    //stroke(240);
    ellipse(position.x,position.y,size,size);
     if (mousePressed){
       fill( random(0,0));
     ellipse(position.x,position.y,size,size);}
     
    popStyle();
    
  }
   
 
 

   
  boolean finished(){
    if(position.y>height){
      return true;
    }else{
      return false;
    }
  }
 }
