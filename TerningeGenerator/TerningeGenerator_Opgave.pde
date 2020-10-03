//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast
int[] terningeKast = new int[38];
int counter =0;

int numberOnes = 0;
int numberTwos = 0;
int numberThrees = 0;
int numberFours = 0;
int numberFives = 0;
int numberSixes = 0;

int boxH = 0;
int boxW = 50;

void setup() {
  size(800, 800);
  clear();
  textSize(15);
  text("TRYK på 'k' FOR AT KASTE", 50, 50);
}

void draw() {

}

void keyPressed() {
  clear();
  text("TRYK på 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 50, 50);

  if (key=='k' && counter < 37) {
   
    
    int kast = lavTerningeKast(1, 6);
    terningeKast[counter] = kast;
    counter++; 
    text("DIT KAST BLEV:" + kast, 50, 75);
    
   
    
  }
  if (key == 's') {
    println("s");
     fjernSidsteKast();
  }
  //OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
  tegnFordeling();
 
  
  //OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
  udskrivKast();
  println(numberOnes);
    
 
  }
  int lavTerningeKast(int min, int max){
  int nyKast = int(random(min, max + 1));
    if(nyKast ==1){
      numberOnes++;
    }
      if(nyKast ==2){
      numberTwos++;
    }
     if(nyKast ==3){
      numberThrees++;
    }
    if(nyKast ==4){
      numberFours++;
    }
     if(nyKast ==5){
      numberFives++;
    }
     if(nyKast ==6){
      numberSixes++;
    }
    
    return nyKast;
  }
  void udskrivKast(){
           for(int b = 0; b < terningeKast.length ; b++){
           if (terningeKast[b]!= 0)
   text("Kast" + b + ":" + terningeKast[b], 600, 50+20*b);
           }
   text("1",125,720);
   text("2",175,720);
   text("3",225,720);
   text("4",275,720);
   text("5",325,720);
   text("6",375,720);
   
     text(numberOnes+" stk",100,680 - numberOnes * 10);
     text(numberTwos+" stk",150,680 - numberTwos * 10);
     text(numberThrees+" stk",200,680 - numberThrees * 10);
     text(numberFours+" stk",250,680 - numberFours * 10);
     text(numberFives+" stk",300,680 - numberFives * 10);
     text(numberSixes+" stk",350,680 - numberSixes * 10);
  
  }
  void fjernSidsteKast(){
   if(counter>0){
     if(terningeKast[counter - 1] == 1){
       numberOnes --;
     }
      if(terningeKast[counter - 1] == 2){
       numberTwos --;
     }
      if(terningeKast[counter - 1] == 3){
       numberThrees --;
     }
      if(terningeKast[counter - 1] == 4){
       numberFours --;
     }
      if(terningeKast[counter - 1] == 5){
       numberFives --;
     }
      if(terningeKast[counter - 1] == 6){
       numberSixes --;
     }
     terningeKast[counter-1]=0;
     counter --;
     
     text("DIT KAST BLEV y e e t e d", 50, 75);
     }  
  }
  void tegnFordeling(){
   text("fordeling af terningekast", 90, 750);
   rect(100,700,boxW,boxH - numberOnes * 10);
   rect(150,700,boxW,boxH - numberTwos * 10);
   rect(200,700,boxW,boxH - numberThrees * 10);
   rect(250,700,boxW,boxH - numberFours * 10);
   rect(300,700,boxW,boxH - numberFives * 10);
   rect(350,700,boxW,boxH - numberSixes * 10);
    
  }
  
