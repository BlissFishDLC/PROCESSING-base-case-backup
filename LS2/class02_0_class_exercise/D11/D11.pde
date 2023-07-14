PImage bunny; 
PImage carrot;

void setup(){
  size(800,800);
  bunny = loadImage("bunny.png");
  carrot = loadImage("carrot.png");
}

void draw(){
  imageMode(CENTER);
  float random1 = random(50,300);
  float randomX = random(0,800);
  float randomY = random(0,800);
  
  float random2 = random(50,200);
  float randomX1 = random(0,800);
  float randomY1 = random(0,800);
  image(bunny,randomX,randomY,random1,random1);
  image(carrot,  randomX1,randomY1 ,random2,random2);
}
