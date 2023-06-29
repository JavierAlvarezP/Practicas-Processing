PImage img;

void setup(){
  size(1000, 1000);
  img = loadImage("Neko.jpg");
}

void draw(){
  loadPixels();
  img.loadPixels();
  for(int y = 0; y < height; y++){
    for(int x = 0; x < width; x++){
      int loc = x + y * width;
      
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      float distance = dist(x,y, mouseX, mouseY);
      float adjustBrightness = (300 - distance) / 300;
      
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
