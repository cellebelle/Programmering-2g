class Tree extends Plants{

  Tree(float _x, float _y, float _growSpeed, float _maxGrowHeigth){
    super();
    plant = btree;
    x = _x;
    y = _y;
    growSpeed = _growSpeed;
    maxGrowHeigth = _maxGrowHeigth;
  }
  
  void display(){ 
    super.display();
  }
  
  void grow(){
    super.grow();
  }
  

}
