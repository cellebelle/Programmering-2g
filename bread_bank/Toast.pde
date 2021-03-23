class ctoast extends Bread{
  
  ctoast(float y_in){
  super(y_in);
  }
  void move(float fast){
    speed = fast;
    x = x + speed;
  }
  void display(){
    image(toast,9+x,9);
  }
}
