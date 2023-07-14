int xpos = 0;
void setup(){
  size(800,800);
}

void draw(){

  background(255,255,255);
  rect(xpos, 100, 50, 50);
  xpos += 4;
  
  if(xpos > width){
    println("小方块超出了画面");
    xpos = 0;
  }
}
