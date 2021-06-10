class Shwide extends Animal{

  Shwide(float _x, float _y, float _speed){
    super();
    x = _x;
    y = _y;    
    speedX = _speed;
    speedY = _speed;
    animal = shwideImage;
    startSpeed = _speed;
  }
  
  //Methods
  void display(){
    super.display();
  }
  
  void move(){
    super.move();
  }
   void slowDown(){
    super.slowDown();
    }
}
