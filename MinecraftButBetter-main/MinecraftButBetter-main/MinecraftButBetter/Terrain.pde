class Terrain extends World{
  //Data
  float x,y;
  float slowAnimalsDown;
  
  //Constructor
  Terrain(){
    super();
  }
  
  
  //Methods
  void display(){
    image(flowerField,x,y,200,150);
  }
  void slowDown(){
   
    for(Buffxelotl allBuffs : buffList){
      print("pee?");
      if(allBuffs.x > x && allBuffs.x < x + 200){
        if(allBuffs.y > y && allBuffs.y < y + 150){
          allBuffs.slowedDown = true;
        
          return;
        }
     }
      allBuffs.slowedDown = false;
    
    }
    for(Shwide allShwides : shwideList){
      allShwides.slowedDown = true;
    }
    
  
  }
  
}
