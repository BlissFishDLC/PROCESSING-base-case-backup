PImage tomato;
int yposT = 0;
int xposT = 400;
Boolean enteredT = false;

PImage potato;
int yposP = 0;
int xposP = 200;
Boolean enteredP = false;

PImage onion;
int yposO = 0;
int xposO = 500;
Boolean enteredO = false;

PImage mushroom;
int yposM = 10;
int xposM = 600;
Boolean enteredM = false;

PImage bell;
int yposB = 20;
int xposB = 100;
Boolean enteredB = false;

PImage carrot;
int yposC = 20;
int xposC = 700;
Boolean enteredC = false;


PImage gummy;
int yposG = 20;
int xposG = 550;
Boolean enteredG = false;

PImage cabbage;
int yposCab = 20;
int xposCab = 650;
Boolean enteredCab = false;

PImage orange;
int yposOra = 20;
int xposOra = 350;
Boolean enteredOra = false;

PImage banana;
int yposBa = 20;
int xposBa = 250;
Boolean enteredBa = false;

PImage apple;
int yposA = 20;
int xposA = 750;
Boolean enteredA = false;

int score = 0;

void setup(){
  tomato = loadImage("tomato.png");
  potato = loadImage("potato.png");
  onion = loadImage("onion.png");
  mushroom = loadImage("mushroom.png");
  bell = loadImage("bellpepper.png");
  carrot = loadImage("carrot.png");
  gummy = loadImage("gummy.png");
  cabbage = loadImage("cabbage.png");
  orange = loadImage("orange.png");
  banana = loadImage("banana.png");
  apple = loadImage("apple.png");
  colorMode(HSB);
  size(800,800);
}


void draw(){ 
  println(score);
  int col = int(map(mouseX, 0, 800, 0, 255));
  background(col,150,150);
  imageMode(CENTER);
  strokeWeight(5);
  stroke(255);
  line(mouseX+100, mouseY-200, mouseX-50, mouseY+100);
  image(apple, xposA, yposA, 200,200);
  image(cabbage, xposCab, yposCab, 200,200);
  image(orange, xposOra, yposOra, 150,150);
  image(potato, xposP, yposP, 200,200);
  image(tomato, xposT, yposT, 200,200);
  image(bell, xposB, yposB, 200,200);
  image(onion, xposO, yposO, 150,150);
  image(gummy, xposG, yposG, 100,100);
  image(banana, xposBa, yposBa, 150,150);
  image(carrot, xposC, yposC, 150,150);
  image(mushroom, xposM, yposM, 100,100);
  
  yposP += 3;
  yposT += 2;
  yposO += 5;
  yposM += 4;
  yposB += 2;
  yposC += 3;
  yposG += 1;
  yposCab += 2;
  yposOra += 1;
  yposBa += 4;
  yposA += 1;
  
  if(yposT > 800){
    yposT = 0;
  }
  
  if(yposP > 800){
    yposP = 0;
  }
  
  if(yposO > 800){
    yposO = 0;
  }
  
  if(yposM > 800){
    yposM = 0;
  }
  
  if(yposB > 800){
    yposB = 0;
  }
  
  if(yposC > 800){
    yposC = 0;
  }
  
  if(yposG > 800){
    yposG = 0;
  }
  
  if(yposBa > 800){
    yposBa = 0;
  }
  
  if(yposCab > 800){
    yposCab = 0;
  }
  
  if(yposOra > 800){
    yposOra = 0;
  }
  
  if(yposA > 800){
    yposA = 0;
  }
  
  
  
  float distanceA = dist(xposA, yposA, mouseX+100, mouseY-200);
  float distanceT = dist(xposT, yposT, mouseX+100, mouseY-200);
  float distanceP = dist(xposP, yposP, mouseX+100, mouseY-200);
  float distanceO = dist(xposO, yposO, mouseX+100, mouseY-200);
  float distanceB = dist(xposB, yposB, mouseX+100, mouseY-200);
  float distanceC = dist(xposC, yposC, mouseX+100, mouseY-200);
  float distanceG = dist(xposG, yposG, mouseX+100, mouseY-200);
  float distanceCab = dist(xposCab, yposCab, mouseX+100, mouseY-200);
  float distanceOra = dist(xposOra, yposOra, mouseX+100, mouseY-200);
  float distanceM = dist(xposM, yposM, mouseX+100, mouseY-200);
  float distanceBa = dist(xposBa, yposBa, mouseX+100, mouseY-200);



  if(distanceT <= 100){
    enteredT = true;
  }
  if(enteredT){
     xposT = mouseX + 50 - 20;
     yposT = mouseY - 100 + 40;
     tomato = loadImage("expTomato.png"); 
  }
  
  
  if(distanceP <= 100){
    enteredP = true;
  }
  if(enteredP){ 
     xposP = mouseX + 50 + 20;
     yposP = mouseY - 100 - 20;
  }
  
  
  
  if(distanceO <= 70){
    enteredO = true;
  } 
  if(enteredO){ 
     xposO = mouseX + 50 - 40;
     yposO = mouseY - 100 + 20;
  }
  
  
  
  if(distanceM <= 50){
    enteredM = true;
  }
  if(enteredM){ 
     xposM = mouseX + 50 + 30;
     yposM = mouseY - 100 - 60;
  }
  
  
  if(distanceB <= 70){
    enteredB = true;
  }
  if(enteredB){ 
     xposB = mouseX + 50 + 10;
     yposB = mouseY - 100 -20;
  }
  
  
  if(distanceC <= 70){
    enteredC = true;
  }
  if(enteredC){ 
     xposC = mouseX + 50 + 10;
     yposC = mouseY - 100 - 20;
  }
  
  
  if(distanceG <= 100){
    enteredG = true;
  }
  if(enteredG){ 
     xposG = mouseX + 50 + 60;
     yposG = mouseY - 100 - 120;
  }
  
  
  if(distanceBa <= 70){
    enteredBa = true;
  }
  if(enteredBa){ 
     xposBa = mouseX + 50 + 50;
     yposBa = mouseY - 100 - 100;
  }
  
  
  if(distanceCab <= 100){
    enteredCab = true;
  }
  if(enteredCab){ 
     xposCab = mouseX + 50 -30;
     yposCab = mouseY - 100 + 60;
  }
  
  
  if(distanceOra <= 100){
    enteredOra = true;
  }
  if(enteredOra){ 
     xposOra = mouseX + 50 - 10;
     yposOra = mouseY - 100 + 20;
  }
  
  
    
  if(distanceA <= 100){
    enteredA = true;
  }
  if(enteredA){ 
     xposA = mouseX + 50 -20;
     yposA = mouseY - 100 + 40;
  }
}



void mousePressed(){
  score = 0;
  
  tomato = loadImage("tomato.png");
  enteredT = false; 
  yposT = 0;
  xposT = int(random(600));
  
  enteredP = false;
  yposP = 0;
  xposP = int(random(600));
  
  enteredO = false;
  yposT = 0;
  xposT =int(random(600));
  
  enteredM = false;
  yposM = 10;
  xposM = int(random(600));
  
  enteredB = false;
  yposB = 20;
  xposB = int(random(600));
  
  enteredC = false;
  yposC = 20;
  xposC = int(random(600));
  
  enteredG = false;
  yposG = 20;
  xposG = int(random(600));
  
  enteredBa = false;
  yposBa = 20;
  xposBa = int(random(600));
  
  enteredCab = false;
  yposCab = 20;
  xposCab = int(random(600));
  
  enteredOra = false;
  yposOra = 20;
  xposOra = int(random(600));
  
  enteredA = false;
  yposA = 20;
  xposA = int(random(600));
}
