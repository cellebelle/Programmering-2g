ArrayList <Anim> AnimList=new ArrayList<Anim>();
PImage kat;
PImage hund;

void setup(){
  size(1000,1000);
  kat = loadImage("pop.png");
  hund = loadImage("doge.png");
}

void draw(){
  background(225);
  for(Anim a:AnimList){
    a.display();
    a.move(1);
  }
}

void keyPressed(){
  Anim a = new Anim(1);
  if(key=='a'){
  a = new ckat(5);
  image(kat,25,25);
  }
  if(key=='b'){
 a = new chund(5);
  image(hund,25,25);
  }
  
AnimList.add(a);
}
