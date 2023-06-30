import processing.video.*;

//Descargar libreria >>processing.video<< (Reproducir video)

//este codigo muestra un video en un ciclo infinito es decir se repite constantemente 
//tambien se manipula el brillo con el cursor de dos formas distintas la primera derecha a izquierda la segunda con un circulo
//para activar la secuencia derecha a izquierda, desactivar lineas(// 37,38) y activar linea 42.
//para activar brillo con posicion de cursor artivar lineas 37,38 desactivar linea (//42)


import processing.video.*;

Movie video;

void setup(){
  size(1280, 720);
  video = new Movie(this, "Circle.mov");
  video.loop();
  video.speed(4);
}

void movieEvent(Movie video) {
  video.read();
}

void draw() {
  image(video, 0, 0);
   loadPixels();
  video.loadPixels();
  for(int y = 0; y < height; y++){
    for(int x = 0; x < width; x++){
      int loc = x + y * width;
      
      float r = red(video.pixels[loc]);
      float g = green(video.pixels[loc]);
      float b = blue(video.pixels[loc]);
      
      //al activar estas dos lineas de codigo el brillo se muestra como circulo al mover el cursor
      //float distance = dist(x,y, mouseX, mouseY);  //circulo de brillo
      //float adjustBrightness = (500 - distance) / 500;   //al cambiar el numero 500 y el exterior despues de /, se cambia el tamaño del circulo que ilumina 
      
      //al activar la sig. linea cambia el brillo con el mouse de derecha a izquierda
      
      float adjustBrightness = ((float)mouseX/width) * 1.0;  
      
      
      r *=adjustBrightness;
      g *=adjustBrightness;
      b *=adjustBrightness;
      
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      
      color c = color(r,g,b);
      pixels[loc] = c;
    }
  }
  updatePixels();
}
