//setup函数processing会自动调用，初始时运行一次
void setup(){
  size(600,600);
}


//draw函数Processing会自动调用，每一帧都会调用一次
void draw(){
  background(0);
  noStroke();
  fill(#FFFDDD);
  ellipse(100,100,80,80);
  fill(#FFD300);
  rect(250,200,50,50); 
  fill(#F51B00);
  quad(290,200, 340, 200, 370, 180, 320, 180);
  fill(#FFC0CB);
  triangle(300, 200, 300, 300, 400, 300); 
  fill(#39448C);
  triangle(300, 300, 400, 300, 400, 400);  
  fill(#234F1E);
  triangle(340, 340, 400, 400, 340, 400);  
  fill(#8bbdd9);
  triangle(340, 340, 340, 400, 310, 380); 
  fill(#616161);
  triangle(300, 280, 300, 340, 270, 310);
  stroke(255);
  
  //使用Processing自带的鼠标位置功能，制作一些鼠标交互的动态
  line((mouseX+10), 400, (600-mouseX),400);
  line((mouseX+100), 420, (500-mouseX),420);
  line((mouseX*0.1 + 200), 440, 430,440);
  line(200, 460, (mouseX*0.5+300),460);
  line((mouseX*0.2+280), 480, (490-mouseX),480);
  line((600-mouseX), 500, 430,500);
}
