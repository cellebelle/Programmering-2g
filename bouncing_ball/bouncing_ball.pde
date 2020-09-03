float boxW = 400;
float boxH = 400;

float x = 150;
float y = 170;
float xSpeed = 5;
float ySpeed = 4;

void setup ()
{
  size(500,500);
  noStroke();
  frameRate(60);
  rectMode(CENTER);
  
}

void draw ()
{
  background(102);
    if (x>(((width-boxW)/2)+boxW)-(15/2)) {
    xSpeed *= -1;
  }

  if (y>(((height-boxH)/2)+boxH)-(15/2)) {
    ySpeed *= -1;
  }
   if (x<((width-boxW)/2)-(15/2)) {
    xSpeed *= -1;
  }
    if (y<((height-boxH)/2)-(15/2)) {
    ySpeed *= -1;
  }
 
  x += xSpeed;
  y += ySpeed;
 
   noFill();
   stroke(255);
 rect(250,250,boxW,boxH);

  if (boxW == 20 && boxH == 20){
    boxW = 20;
    boxH = 20;
  } else {
    boxW --;
    boxH --;}
  
  noStroke();
  fill(255);
  ellipse(x, y, 15, 15);
 
}
