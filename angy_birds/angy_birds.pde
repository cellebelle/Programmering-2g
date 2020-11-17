float x0 = 100,y0 = 400;
float u0,v0;
float x,y;
float t;
float g = -9.82;
float vinkel = PI*0.75;
float updatering = 0.075;
float xe, ye;
float le, le2, leR;
float v;
float Bx, By;

float A;
float m = 20;
float E;

float lengde = 50;

float Sx, Sy;

boolean skudt = false;
boolean grisDod = false;
PImage photo;
PImage Fugl;

void setup()
{
  size(1500,500);
  frameRate(60);
  x = x0;
  y = y0;
  photo = loadImage("Meneske1.png");
  Fugl = loadImage("Covid.png");
  imageMode(CENTER);
}

void draw()
{
  background(200,220,255);
  fill(200,255,200);
  Bx=width/2; By = height*3;
  ellipse(Bx,By,2500,2500);
  
    strej();
  
  if(grisDod == false){
  //lille gris
  fill(100,255,125);
  image(photo,1000,240,75,75);}
  if(dist(x,y,1000,250)<35){grisDod = true;}
  
  //fugl
  fill(255,200,0);
  fill(255,0,0);
  image(Fugl,x,y,50,50);
  

  update();
  vinkel();
  
  if(dist(x,y,Bx,By)<1265){updatering = 0;}
}

void mousePressed()
{
  skudt = true;
}

void update()
{
  if(skudt == true){
  //x = v0*cos(vinkel)*t + x0;
  x = u0*t+x0;
  //y = -0.5*g*t*t+v0*sin(vinkel)*t+y0;
  y = -0.5*g*t*t+v0*t+y0;
  t += updatering;
  
  E = 50* lengde*lengde;
  A = sin(vinkel+PI);
  u0 = (float)Math.sqrt((2*E)/(m*(1+(A*A))));
  v0 = A*(float)Math.sqrt((2*E)/(m*(1+(A*A))));
  }
  
  lengde = (float)Math.sqrt(xe*xe+ye*ye);
  if(lengde > 50){lengde=50;}
}

void strej()
{
  if(skudt == true){return;}
  line(x,y,Sx,Sy);
  xe = x-mouseX;
  ye = y-mouseY;
  
  Sx = cos(vinkel)*lengde+x;
  if(mouseY<y)
  Sy = sin(-vinkel)*lengde+y;
  if(mouseY>y)
  Sy = sin(vinkel)*lengde+y;
}

void vinkel()
{
  v = (xe)/(ye);
  if(mouseY<y)
  vinkel = atan(v)+PI/2;
  if(mouseY>y)
  vinkel = -atan(v)+PI/2;
}
