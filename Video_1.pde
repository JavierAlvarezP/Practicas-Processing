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
      
      float distance = dist(x,y, mouseX, mouseY);  
      float adjustBrightness = (500 - distance) / 500;   //al cambiar el numero 500 y el exterior despues de 
      // podemos cambiar el tamaño de la esfera del brillo
      
      //float adjustBrightness = ((float)mouseX/width) * 1.0;  //al activar esta linea cambia el brillo con el mouse de derecha a izquierda
      //pero debe desactivar las dos lineas de codigo anteriores con //
      
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
