//按下'a'和'd'键能够移动鱼竿，
//按下'w'和's'键能够放下和收起鱼线，
//按下"空格"键能够将钓到的鱼放走
//press 'a' or 'd' to move the fishing rod
//press 'w' or 's' to fish 
//press 'space' to release the fish


PImage fish1;
PImage fish2;
PImage fish3;
PImage fish4;
PImage fish5;

float x1 = 0;
float x2 = 0;
float x3 = 0;
float x4 = 0;
float x5 = 0;
float x = 400;
float y = 100;

float y1 = 800*0.38;
float y2 = 800*0.45;
float y3 = 800*0.6;
float y4 = 800*0.76;
float y5 = 800 * 0.9;

Boolean collide1 = false;
Boolean collide2 = false;
Boolean collide3 = false;
Boolean collide4 = false;
Boolean collide5 = false;

void setup(){
  size(800,800);
  
  fish1 = loadImage("fish1.png");
  fish2 = loadImage("fish2.png");
  fish3 = loadImage("fish3.png");
  fish4 = loadImage("fish4.png");
  fish5 = loadImage("fish5.png");
}


void draw(){
    
    background(0);
    imageMode(CENTER);

  
    fill(0, 0, 200, 90);
    wave(height*0.3, 50);
    image(fish1, x1, y1, 150, 150);
    x1 ++;

    image(fish2, x2, y2, 200, 200);
    x2 +=2;
    
    fill(0, 0, 255, 90);
    wave(height*0.5, 40);
  

    
    image(fish3, x3, y3, 200, 200);
    x3 += 1.5;
    
    image(fish4, x4, y4, 300, 300);
    x4 += 3;
    
    fill(0, 0, 255);
    wave(height*0.8, 20);
    image(fish5, x5, y5, 200,200);
    x5 += 2.5;
    
    if(x1 > 800){
      x1 = 0;
    }
    
    if(x2 > 800){
      x2 = 0;
    }
    
    if(x3 > 800){
      x3 = 0;
    }

    if(x4 > 800){
      x4 = 0;
    }
    
    if(x5 > 800){
      x5 = 0;
    }


    fill(#FBFF34);
    noStroke();
    ellipse(x, 50, 50,50);
  
    stroke(255);
    strokeWeight(5);
    line(x, 50, x, y + 50);
    
    
    float distance1 = dist(x, y + 50, x1+70, height*0.38-30);
    float distance2 = dist(x, y + 50, x2+90, height*0.45);
    float distance3 = dist(x, y + 50, x3+90, height*0.6+10);
    float distance4 = dist(x, y + 50, x4+120, height*0.76);
    float distance5 = dist(x, y + 50, x5+90, height*0.9);
    
    if(distance1 <= 10){
      collide1 = true;
    } 
    if(collide1){
      x1 = x-70;
      y1 = y + 80;
      y = y-8;
    }
    
    if(distance2 <= 10){
      collide2 = true;
    }
    if(collide2){
      x2 = x-90;
      y2 = y + 50;
      y = y-8;
    }
  
    
    if(distance3 <= 10){
      collide3 = true;
    }
    if(collide3){
      x3 = x -90;
      y3 = y + 40;
      y = y-8;
    } 
    
    
    if(distance4 <= 10){
      collide4 = true;
    }
    if(collide4){
      x4 = x -120;
      y4 = y + 50;
      y = y-8;
    }
    
    
    if(distance5 <= 10){
      collide5 = true;
    }
    if(collide5){
      x5 = x - 90;
      y5 = y + 50;
      y = y-8;
    }   


    if(y < 100){
    
      y = 100;
    }
  
}


void keyPressed(){

  if (key == 'd'){
     x += 10;
  }  
  if (key =='a'){
     x = x - 10;
  }
  if(key == 's'){
    y += 10;
  }
  if(key == 'w'){
    y = y - 10;
  }
  if(key == ' '){
    if(collide1){
      x1 = 0;
      y1 = 800*0.38;
      collide1 = false; 
    }
    if(collide2){
      x2 = 0;
      y2 = 800*0.45;
      collide2 = false;
    }
    if(collide3){
      x3 = 0;
      y3 = 800*0.6;
      collide3 = false; 
    }
    if(collide4){
      x4 = 0; 
      y4 = 800*0.76;
      collide4 = false; 
    }
    if(collide5){
      x5 = 0;
      y5 = 800*0.9;
      collide5 = false;
    }
   }
  
  if(x > 800){
    x = 800;
  }
  if(x < 0){
    x = 0;
  }
}



void wave(float h, int f){
  noStroke();
  float amp = 20 + 2 * sin(frameCount / (f / 2 ));
  beginShape();
  vertex(0, height);
  for(int i = 0; i < width; i ++){
    vertex(i, h + amp * sin((i + frameCount)/f));
  }
  vertex(width, height);
  endShape();
}
