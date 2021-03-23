class cgarlicb extends Bread{
  
  cgarlicb(float y_in){
  super(y_in);
  }
  void move(float fast){
    speed = fast;
    x = x + speed;
  }
  void display(){
    image(garlicBread,9+x,9);
  }
}
