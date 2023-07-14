void setup(){
  size(800,650);
}

void draw(){
  background(0);
  noStroke();
  int count = 1;
  int size = 50;
  int y = 0;
  float x = 0;  
  for (x = 0; x < width; x += size){ 
    for (y = 0; y < height ; y += size){
    float col1 = map(mouseX, 0, 800, 0, 255);
    float col = map(abs(mouseX-x), 0,800,0,255);
        if(count % 2 == 0){
          fill(255-col,255,col);
        } else {
          
          fill(col,0,255-col);
        }
        rect(x , y, size, size);
        fill(255,0,0);
        textAlign(LEFT, TOP);
        count ++;
    }
  }
}
