Table table;
int x, y;

void setup(){
size (1600,1000);
background(0);
table = loadTable ("https://raw.githubusercontent.com/jakevdp/data-USstates/master/state-areas.csv", "header");

for(TableRow r: table.rows()){
  String s = r.getString ("state");
  int i = r.getInt("area (sq. mi)");
  println("state:", s,"Area:", i,"sq. miles");

  x = (i/500);
  y += 15;
  if(x > 5){
    rect(120,y,x,10);
  }else{
    rect(120,y,2,10);
  }
  text(s,0,y+8);
  text(i+" sq. miles ", x+125, y+8);

}

}
