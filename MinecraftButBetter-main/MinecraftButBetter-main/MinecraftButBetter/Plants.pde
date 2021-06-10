class Plants extends World{ 
  float x,y;
  float h = 5;
  float growSpeed;
  float maxGrowHeigth;
  PImage plant;
  
  Plants(){
    
  }
  
  void display(){
    image(plant, x, y, 70,h);
  }
  
  void grow(){
    if(h < maxGrowHeigth){
      h = h + growSpeed;
    }
  }
  
  
}
