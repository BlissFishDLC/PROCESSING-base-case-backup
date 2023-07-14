void setup(){
  size(255, 255);
}

void draw(){
    
  //for (int j = 0 ; j < 5 ; j++){
  //  for (int i = 0; i < 5; i++){
  //    rect(i*100,  j*100, 100, 100);
  //  }
  //}
   for(int y  = 0; y < height; y++)
     for(int x = 0; x < width; x++){
       float distance = dist(x,y,mouseX, mouseY);
       float distance2 = dist(x, 0, mouseX, mouseY);
        float distance3 = dist(y,0, mouseX, mouseY);
       stroke(distance, distance2, distance3);  
       point(x,y);
     }
  
}
