float x = -100 ; //x og y er hvor billedet starter, placeringen
float y = -100 ;
PImage img;
 
void setup(){
  size(1000,1000);
  img = loadImage("Doge.png"); //billede 
 
}
 
void draw(){
  
  background(0,0,0);
  x=x+2;
  y = y+2; // 
  image(img,x,y);
  
  textSize(40);
fill(#ff595e);
text("such wow", 150, 60);
fill(#8ac926);
text("much wow", 500, 300);
fill(#1982c4);
text("very internets", 10, 600);
}
