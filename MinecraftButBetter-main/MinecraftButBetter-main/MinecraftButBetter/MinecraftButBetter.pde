World minecraft = new World();
    PImage flowerField;
    PImage buffA;
    PImage shwideImage;
    PImage btree;
    PImage bb;

void setup(){
  size(800,800);
    flowerField = loadImage("flowerfield.PNG");
    buffA = loadImage("axelotl.png");
    shwideImage = loadImage("shwide.png");
    btree = loadImage("BirchTree.png");
    bb = loadImage("bb.png");
    
  minecraft.worldSetup();

}

void draw(){
  clear();
  minecraft.displayWorld();
}

void keyPressed(){
   minecraft.keyPress();
}
