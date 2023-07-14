float deg;
float degAcc;
float degVel;
float r;
float g;
float b;
void setup()
{
  size(500,500);
  rectMode(CENTER);
  degAcc = 0.005;
}

void draw()
{
  if(mousePressed == true )
  {
    degVel =degVel + degAcc;
    deg = deg + degVel;
  }
  background(0);
  pushMatrix();
  translate(250,250);
  strokeWeight(1.0);
  stroke(255);
  //rotate(radians(deg));
  noFill();
  for(int i=1;i<800;i+=2)
  {
    rotate(radians(deg));
    rect(0,0,i,i);
  }
  popMatrix();
}
