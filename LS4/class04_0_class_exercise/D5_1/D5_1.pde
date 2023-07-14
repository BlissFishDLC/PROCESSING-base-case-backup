void setup(){
  size(800,650);
}

void draw(){
  background(0);
  //noStroke();
  int count = 1;
  int size = 50;

  for (int x = 0; x < width; x += size){ 
    for (int y = 0; y < height ; y += size){
      rect(x,y,size,size);
        if(count % 2 == 0){
          fill(255,255,255);
        } else {
          fill(0,0,0);
        }
        rect(x , y, size, size);
        fill(255,0,0);
        textAlign(LEFT, TOP);
        //text(count, x,y);
        count ++;
    }
  }
  
}
