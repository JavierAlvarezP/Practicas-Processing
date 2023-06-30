//variables a usar
float value_1, value_2, position=0;
String operation;
String entery_text="Wenas uwu";     


void setup() {
size(400, 500);                     //tamaño de pantalla"interfaz"
background(1,180,172);              //color de fondo
noStroke();                         // elimina bordes de las figuras
textSize(60);                       //tamaño texto
}

 void draw()
 { 
  fill(155, 155, 155);              //este es el fondo de color el dsplay
  rect(10, 10, 380, 70);            // este es el "display"
   
  fill(0, 255, 255);                //este es el color del texto dentro del "display"
  text(entery_text, 20, 67);        //captura el numero y lo muestra
  
  //Botones Numeros
  
  fill(0,0,0);                          //color de fondo del boton 0
  rect(110, 400, 80, 80, 20);           //boton 0
  fill(255,255,0);                      //color de fondo texto boton 0
  text("0", 127, 462);                  //texto en el boton y posicion
  
  fill(0,0,0);                          //color de fondo del boton 1
  rect(10, 300, 80, 80, 20);            //boton 1   
  fill(255,0,0);                        //color de fondo texto boton 1
  text("1", 27, 362);                   //texto en el boton y posicion
  
  fill(0,0,0);                          //color de fondo del boton 2
  rect(110, 300, 80, 80, 20);           //boton 2
  fill(255,0,0);                        //color de fondo texto boton 2
  text("2", 127, 362);                  //texto en el boton y posicion
  
  fill(0,0,0);                          //color de fondo del boton 3
  rect(210, 300, 80, 80, 20);           //boton 3
  fill(255,0,0);                        //color de fondo texto boton 3
  text("3", 227, 362);                  //texto en el boton y posicion
  
  fill(0,0,0);                          //color de fondo del boton 4
  rect(10, 200, 80, 80, 20);            //boton 4
  fill(255,0,0);                        //color de fondo texto boton 4
  text("4", 27, 262);                   //texto en el boton y posicion
  
  fill(0,0,0);                          //color de fondo del boton 5
  rect(110, 200, 80, 80, 20);           //boton 5
  fill(255,0,0);                        //color de fondo texto boton 5
  text("5", 127, 262);                  //texto en el boton y posicion
  
  fill(0,0,0);                          //color de fondo del boton 6
  rect(210, 200, 80, 80, 20);           //boton 6
  fill(255,0,0);                        //color de fondo texto boton 6
  text("6", 227, 262);                  //texto en el boton y posicion
  
  fill(0,0,0);                          //color de fondo del boton 7
  rect(10, 100, 80, 80, 20);            //boton 7
  fill(255,0,0);                        //color de fondo texto boton 7
  text("7", 27, 162);                   //texto en el boton y posicion
  
  fill(0,0,0);                          //color de fondo del boton 8
  rect(110, 100, 80, 80, 20);           //boton 8
  fill(255,0,0);                        //color de fondo texto boton 8
  text("8", 127, 162);                  //texto en el boton y posicion
  
  fill(0,0,0);                          //color de fondo del boton 9
  rect(210, 100, 80, 80, 20);           //boton 9
  fill(255,0,0);                        //color de fondo texto boton 9
  text("9", 227, 162);                  //texto en el boton y posicion
  
  //Botones Operaciones 
  
  fill(0,0,0);                          //color de fondo del boton ÷
  rect(310, 100, 80, 80, 20);           //boton  ÷
  fill(93,255,0);                       //color de fondo texto boton ÷
  text("÷", 325, 160);                  //texto en el boton y posicion
   
  fill(0,0,0);                          //color de fondo del boton x
  rect(310, 200, 80, 80, 20);           //boton x
  fill(93,255,0);                       //color de fondo texto boton x
  text("x", 333, 255);                  //texto en el boton y posicion
  
  fill(0,0,0);                          //color de fondo del boton -
  rect(310, 300, 80, 80, 20);           //boton -
  fill(93,255,0);                       //color de fondo texto boton -
  text("-", 333, 358);                  //texto en el boton y posicion
  
   
  fill(0,0,0);                          //color de fondo del boton +
  rect(310, 400, 80, 80, 20);           //boton +
  fill(93,255,0);                       //color de fondo texto boton +
  text("+", 327, 462);                  //texto en el boton y posicion
  
  fill(0,0,0);                          //color de fondo del boton C
  rect(10, 400, 80, 80, 20);            //boton C
  fill(255,0,0);                        //color de fondo texto boton C
  text("C", 27, 462);                   //texto en el boton y posicion
 
  fill(0,0,0);                          //color de fondo del boton =
  rect(210, 400, 80, 80, 20);           //boton =
  fill(255,0,216);                      //color de fondo texto boton =
  text("=", 227, 462);                  //texto en el boton y posicion
   
   
   input();                         //Capturar valores uwu
}
  

//presionar boton 0
void input(){
    if(mousePressed){
    delay(150);
    if(mouseX>110&&mouseX<190&&mouseY>400&&mouseY<460){
      if(position==1){
        position=2;
      }
      if(position==0){
        value_1 = (value_1*10)+0;
      }
      else if(position==2){
        value_2 = (value_2*10)+0;
      }
      else if(position==4){
        value_1=0;
        position=0;
      }
    }
    
    //presionar boton 1
    else if(mouseX>10&&mouseX<90&&mouseY>300&&mouseY<380){
      if(position==1){
        position=2;
      }
      if(position==0){
        value_1 = (value_1*10)+1;
      }
      else if(position==2){
        value_2 = (value_2*10)+1;
      }
      else if(position==4){
        value_1=1;
        position=0;
      }
    }
    
    //presionar boton 2
    else if(mouseX>110&&mouseX<190&&mouseY>300&&mouseY<380){
      if(position==1){
        position=2;
      }
      if(position==0){
        value_1 = (value_1*10)+2;
      }
      else if(position==2){
        value_2 = (value_2*10)+2;
      }
      else if(position==4){
        value_1=2;
        position=0;
      }
    }
    
    //presionar boton 3
    else if(mouseX>210&&mouseX<290&&mouseY>300&&mouseY<380){
      if(position==1){
        position=2;
      }
      if(position==0){
        value_1 = (value_1*10)+3;
      }
      else if(position==2){
        value_2 = (value_2*10)+3;
      }
      else if(position==4){
        value_1=3;
        position=0;
      }
    }
    
    //presionar boton 4
    else if(mouseX>10&&mouseX<90&&mouseY>200&&mouseY<280){
      if(position==1){
        position=2;
      }
      if(position==0){
        value_1 = (value_1*10)+4;
      }
      else if(position==2){
        value_2 = (value_2*10)+4;
      }
      else if(position==4){
        value_1=4;
        position=0;
      }
    }
    
    //presionar boton 5
    else if(mouseX>110&&mouseX<190&&mouseY>200&&mouseY<280){
      if(position==1){
        position=2;
      }
      if(position==0){
        value_1 = (value_1*10)+5;
      }
      else if(position==2){
        value_2 = (value_2*10)+5;
      }
      else if(position==4){
        value_1=5;
        position=0;
      }
    }
    
    //presionar boton 6
    else if(mouseX>210&&mouseX<290&&mouseY>200&&mouseY<280){
      if(position==1){
        position=2;
      }
      if(position==0){
        value_1 = (value_1*10)+6;
      }
      else if(position==2){
        value_2 = (value_2*10)+6;
      }
      else if(position==4){
        value_1=6;
        position=0;
      }
    }
    
    //presionar boton 7
    else if(mouseX>10&&mouseX<90&&mouseY>100&&mouseY<180){
      if(position==1){
        position=2;
      }
      if(position==0){
        value_1 = (value_1*10)+7;
      }
      else if(position==2){
        value_2 = (value_2*10)+7;
      }
      else if(position==4){
        value_1=7;
        position=0;
      }
    }
    
    //presionar boton 8
    else if(mouseX>110&&mouseX<190&&mouseY>100&&mouseY<180){
      if(position==1){
        position=2;
      }
      if(position==0){
        value_1 = (value_1*10)+8;
      }
      else if(position==2){
        value_2 = (value_2*10)+8;
      }
      else if(position==4){
        value_1=8;
        position=0;
      }
    }
    
    //presionar boton 9
    else if(mouseX>210&&mouseX<290&&mouseY>100&&mouseY<180){
      if(position==1){
        position=2;
      }
      if(position==0){
        value_1 = (value_1*10)+9;
      }
      else if(position==2){
        value_2 = (value_2*10)+9;
      }
      else if(position==4){
        value_1=9;
        position=0;
      }
    }
    
    //presionar boton +
    else if(mouseX>310&&mouseX<390&&mouseY>400&&mouseY<480){
      if(position==0){
        position=1;
      }
      else if(position==4){
        position=1;
      }
      if(position==1){
        operation="+";
      }
    }
    
    //presionar boton -
    else if(mouseX>310&&mouseX<390&&mouseY>300&&mouseY<380){
      if(position==0){
        position=1;
      }
      else if(position==4){
        position=1;
      }
      if(position==1){
        operation="-";
      }
    }
    
    //presionar boton x
    else if(mouseX>310&&mouseX<390&&mouseY>200&&mouseY<280){
      if(position==0){
        position=1;
      }
      else if(position==4){
        position=1;
      }
      if(position==1){
        operation="*";
      }
    }
    
    //presionar boton ÷
    else if(mouseX>310&&mouseX<390&&mouseY>100&&mouseY<180){
      if(position==0){
        position=1;
      }
      else if(position==4){
        position=1;
      }
      if(position==1){
        operation="/";
      }
    }
    
    //realiza la operacion suma
    else if(mouseX>210&&mouseX<290&&mouseY>400&&mouseY<480){
      if(operation=="+"){
        value_1 += value_2;
      }
      
       //realiza la operacion resta
      else if(operation=="-"){
        value_1 -= value_2;
      }
      
       //realiza la operacion multiplicacion
      else if(operation=="*"){
        value_1 *= value_2;
      }
      
       //realiza la operacion division
      else if(operation=="/"){
        value_1 /= value_2;
      }
      position=4;
      value_2=0;
      operation="";
    }
    
    //si se presiona "C" cierra el programa
    else if(mouseX>10&&mouseX<90&&mouseY>400&&mouseY<480){
      exit();
    }
  }

//muestra la captura de numeros en el "display" y la operacion

 if(position==0||position==4){
    entery_text = str(value_1);
  }
  
 else if(position==1){
    entery_text = str(value_1)+operation;
 }
  
  else if(position==2){
    entery_text = str(value_1)+operation+str(value_2);
  }

}
