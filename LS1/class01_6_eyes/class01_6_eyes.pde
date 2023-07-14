//定义 r,g,b 值
float r = 50;
float g = 80;
float b = 100;
void setup(){
  size(600,700);
  //在这里使用r,g,b变量
  background(r, g, b);
}

void draw(){
  noStroke();
    //调用画天空的函数
  drawSky();
    //调用画山的函数
  drawMountain();
  //调用moveEye函数
  moveEye(300,150,80);
  //moveEye(100,20,80);
  //moveEye(500,200,80);
}


//自定义一个函数用来画天空
void drawSky(){
  fill(100,150,190);
  rect(0,0,600,200);
  rect(0,210,600,10);
  rect(0,230,600,10);
  rect(0,250,600,10);
  rect(0,270,600,10);
  rect(0,290,600,10);
  rect(0,310,600,5);
  rect(0,320,600,5);
  rect(0,330,600,5);
}

//自定义一个函数用来画山
void drawMountain(){
  fill(152,200,170);
  triangle(50,700, 100,700, 150,500);
  fill(80,100,250);
  triangle(100,700, 150,500, 250,700);
  fill(152,200,170);
  triangle(200,700, 400, 400, 300, 700);
  fill(80,100,250);
  triangle(400, 400, 300, 700, 600, 700);
}


//自定义一个带参数的函数，绘制能交互的眼睛
void moveEye(int x, int y, int r){
  ellipseMode(CORNER);
  fill(255,180,0);
  int eyeH = r + 80;
  int eyeX = x - 200;
  int eyeY = y - eyeH/2;
  ellipse(eyeX, eyeY, 400, eyeH);
  ellipseMode(CENTER);
  fill(178, 232, 229);
  ellipse(x, y, eyeH, eyeH);
  fill(0);
  //ellipse(300,150,80,80);
  float angle = atan2(mouseY - y, mouseX - x);
  ellipse(x + 0.3*r*cos(angle),y+0.3*r*sin(angle),r,r);
}
