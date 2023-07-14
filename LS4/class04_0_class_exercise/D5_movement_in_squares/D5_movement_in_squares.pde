void setup(){
  size(800,650);
}

void draw(){
  background(0);
  noStroke();
  float count = 1;
  int size = 50;
  float x = 0;
  float widthSize = size*(abs(x-mouseX)/width+0.1);
  
  for (x = 0; x < width; x += widthSize){
        widthSize = size*(abs(x-mouseX)/width*2+0.1);
        if(widthSize > size){
          widthSize = size;
        } 
        
        if(count % 2 == 0){
          fill(0,0,0);
          for(int y = 0; y < height; y += size*2){
            fill(255,255,255);
          
            rect(x,y,widthSize, size);
          }
        } else {
          for (int y = size; y < height; y += size*2){
            fill(255,255,255);
            
            rect(x,y,widthSize,size);
          }
        } 
        count ++;
  }
}
