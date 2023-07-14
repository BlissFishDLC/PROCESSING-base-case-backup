void setup(){
  size(800,650);
}

void draw(){
  background(0);
  noStroke();
  int count = 1;
  int size = 50;
  float x = 0;
  float mousePos = mouseX;
  float newWidth = size * (mousePos / width + 0.1);
  for (x = 0; x < width; x += newWidth){ 
    for (int y = 0; y < height ; y += size){
     
        if(count % 2 == 0){
          fill(255,255,255);
        } else {
          fill(0,0,0);
        }
        rect(x , y, newWidth, size);
        fill(255,0,0);
        textAlign(LEFT, TOP);
        //text(count, x,y);
        count ++;
    }
  }
}
