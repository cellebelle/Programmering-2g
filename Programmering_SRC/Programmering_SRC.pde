Table table;
int x, y;

ArrayList<Cases> cases = new ArrayList<Cases>();

void setup(){
size (1920,1080);
background(0);
table = loadTable ("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv", "header");

showData();
}

void draw(){
  
}

void showData(){
  
  float yLevel = 15;
  int numb = 0;
  for(TableRow r: table.rows()){
    String s = r.getString ("state");
    int c = r.getInt ("cases");
    
    int w = c/3000;
    if(w < 5){
      w=4;
    }
    cases.add(new Cases(250, yLevel, w,10));
    numb++;
    yLevel += 15;
    
    text(s,0,yLevel);
    
    text(c+" cases ", 150, yLevel-5);
  }
  
  for (Cases c : cases){
    if(c != null)
      c.display();
  }
  
  
  
}
