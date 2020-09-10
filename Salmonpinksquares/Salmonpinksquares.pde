int rectSize=40;
int space=9;

void setup() {
  size(500, 500);
  background(20);
  frameRate(45);
  noStroke();
  fill(#ff91a4);
}
void draw(){
  clear();
  rectMode(CENTER);
    for (int x = 55 ; x < 459; x += 49) {
    for (int y = 55; y < 459; y += 49) {
      float s = random(44,48);
      rect(x,y,s,s);
    }
  }
}
