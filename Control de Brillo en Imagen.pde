float t;
PImage img;

void setup(){
background(30);
size(1000,1000);
img = loadImage("Neko.jpg");
}

void draw(){
stroke(255);
strokeWeight(5);
translate(0,height/2);
point(x(t),y(t));
t++;
loadPixels();
  img.loadPixels();
  for(int y = 0; y < height; y++){
    for(int x = 0; x < width; x++){
      int loc = x + y * width;
      
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      float adjustBrightness = ((float)mouseX/width) * 1.0;
      r *=adjustBrightness;
      g *=adjustBrightness;
      b *=adjustBrightness;
      
      color c = color(r,g,b);
      pixels[loc] = c;
    }
  }
   updatePixels();
}

float x(float t) {
  return t;
}

float y(float t) {
  return tan(t*101) * 100;
}
