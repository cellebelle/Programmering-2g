class ckat extends Anim{
  
  ckat(float y_in){
  super(y_in);
  }
  void move(float fast){
    speed = fast;
    x = x + speed;
  }
  void display(){
    image(kat,9+x,9);
  }
}
