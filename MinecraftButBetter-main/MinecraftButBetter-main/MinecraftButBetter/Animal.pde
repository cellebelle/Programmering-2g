class Animal extends World{
  float x,y;
  float speedX;
  float speedY;
  float startSpeed;
  PImage animal;
  Boolean slowedDown = false;
  
  Animal(){
    
  }
  
  void display(){
    image(animal, x, y, 100,150);
  }
  
  void move(){
    x = x + speedX;
    y = y + speedY;
    if( x > width || x < 0){
      speedX = -speedX;
    }
    if( y > height || y < 0){
      speedY = -speedY;
    } 
  }
  void slowDown(){

    if(slowedDown == true){
      speedX = startSpeed/2;
      speedY = startSpeed/2;
      
    }
    if(slowedDown == false){
      speedX = startSpeed;
      speedY = startSpeed;
      
    }
  }
  
}
