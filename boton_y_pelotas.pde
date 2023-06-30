//lo que hace este codigo y su ejecucion es mostrar pelotas o esferas que se mueven de forma aleatoria
//y un boton rectangular que cambia entre 2 fondos al momento de presionarlo

boolean button = false;
PImage[] fondo= new PImage[2];


int y = 20;
int x = 20;
int w = 50;
int h = 150;

class pelota{
 int tamanyo,x,y,vx,vy;
 pelota(int a, int b){
  tamanyo=(int)random(100);
  x=a;
  y=b;
  vx=(int)random(-10,10);
  vy=(int)random(-10,10);
 }

  void dibujaPelota(){
   ellipse(x,y,tamanyo,tamanyo); 
  }
  void muevePelota(){
   x=x+vx;
   y=y+vy;
   if ((x>1280)||(x<0)){
     vx=-vx;
   }  
   if ((y>720)||(y<0)){
    vy=-vy; 
   }
}
}
pelota [] Pelotas=new pelota[20];  //si se quiere agregar o quitar pelotas, solo cambia el numero entre[] por la cantidad que desea

void setup(){
  size(1280, 720);
   fondo[0]=loadImage("escena.jpg");
  fondo[1]=loadImage("paisaje.jpg");
  for (int i=0;i<20;i++){                                       // asi como este numero tambien el 20 por la cantidad deseada
 Pelotas[i]=new pelota((int)random(1280),(int)random(720));
  }
}

void draw(){
  if(button) {
    background(fondo[0]);
    stroke(0);
  }else{
    background(fondo[1]);
    stroke(255);
  }
  fill(255);
  rect(x, y, w, h);
  for (int i=0;i<20;i++){  //y por ultimo este tambien

Pelotas[i].muevePelota();
 Pelotas[i].dibujaPelota();
}
}

void mousePressed (){
  if((mouseX > x) && (mouseX < x + w)&&
  (mouseY > y) && (mouseY < y + h)){
    if(button){
      button = false;
    }else{
      button = true;
    }
  }
}

    
