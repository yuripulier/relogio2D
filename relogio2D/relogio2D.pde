PImage img;

// Declarar os objetos
Bisel bisel;
Cristal cristal;
Ponteiro ponteiroSec, ponteiroMin, ponteiroHour;

// Inicializar os objetos
void setup(){
  size(700,600);
  smooth(8);  
  background(255,255,255);
  img = loadImage("pulseira.png");
  float centerX = width/2;
  float centerY = height/2;
  bisel = new Bisel(color(30,30,30), centerX, centerY, 280, 25);
  cristal = new Cristal(color(20,20,20), centerX, centerY, 260);
}

// Chamar métodos dos objetos
void draw(){
  loadPixels();
  img.loadPixels();
  image(img,210,87);
  bisel.display();
  cristal.display();
}
