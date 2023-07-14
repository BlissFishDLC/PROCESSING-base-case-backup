float rad = random(50);        
float xpos, ypos;

float xspeed = 2;  
float yspeed = 2;  

int xdirection = 1;  
int ydirection = 1; 


void setup() 
{
  size(600, 800);
  noStroke();
  ellipseMode(RADIUS);
  xpos = random(600);
  ypos = random(800);
}

void draw() 
{  
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  if (xpos > width-rad) {
    xdirection = xdirection * -1;
    fill(random(255),random(255),random(255));
  }
  
  if(xpos < rad){
    xdirection = xdirection * -1;
    fill(random(255),random(255),random(255));
  }
  if (ypos > height-rad) {
    ydirection = ydirection * -1;
    fill(random(255),random(255),random(255));
  }
  
  if(ypos < rad){
    ydirection = ydirection * -1;
    fill(random(255),random(255),random(255));
  }

  ellipse(xpos, ypos, rad, rad);
}
