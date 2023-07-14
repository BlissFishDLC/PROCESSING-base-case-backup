PImage tomato;
int xposT = 400;
int yposT = 100;
Boolean collision = false;

void setup(){
  size(800,800);
  tomato = loadImage("tomato.png");
}

void draw(){
  background(0,0,0);
  imageMode(CENTER);
  
  strokeWeight(5);
  stroke(255,255,255);
  line(mouseX + 100, mouseY - 200, mouseX -50, mouseY + 100);
  
  image(tomato, xposT, yposT , 200,200);
  
  yposT += 2;
  if (yposT > 800){
    yposT = 0;
  }
  
  float distance = dist(mouseX + 100, mouseY - 200,xposT, yposT);
  
  if(distance < 90){
    println("碰撞");
    collision = true;
  }
  
  if(collision){
    xposT = mouseX + 50;
    yposT = mouseY -100;
    tomato = loadImage("expTomato.png");
  }
}
