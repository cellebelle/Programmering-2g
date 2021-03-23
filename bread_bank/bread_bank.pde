//1: objekt er f.eks. mine billeder, klasse er "Toast" og "garlicBread"
//2: reference:  "Bread a = new Bread(1);"
//3: float
//4: float
//6: nedarvning er "extends", som man kan se i "Toast" og "garlicBread"
//7: polymorfi, min super class er Bread
//9: void setup er en metode

ArrayList <Bread> BreadList=new ArrayList<Bread>();
PImage toast;
PImage garlicBread;

void setup(){
  size(1000,1000);
  toast = loadImage("toast.png");
  garlicBread = loadImage("garlicbread.png");
}

void draw(){
  background(225);
  for(Bread a:BreadList){
    a.display();
    a.move(5);
  }
}

void keyPressed(){
  Bread a = new Bread(1);
  if(key=='a'){
  a = new cgarlicb (5);
  image(toast,25,25);
  }
  if(key=='b'){
 a = new ctoast(5);
  image(garlicBread,25,25);
  }
  
BreadList.add(a);
}
