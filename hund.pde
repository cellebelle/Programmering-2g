class chund extends Anim{
  
  chund(float y_in){
  super(y_in);
  }
  void move(float fast){
    speed = fast;
    x = x + speed;
  }
  void display(){
    image(hund,9+x,9);
  }
}
