// Imports
PImage img;
PFont f, fMarca;
import processing.sound.*;
import processing.video.*;

// Declaração de objetos
SoundFile music;
Movie video;
Bisel bisel;
Cristal cristal;
Ponteiro ponteiroS = new Ponteiro();
Ponteiro ponteiroM = new Ponteiro();
Ponteiro ponteiroH = new Ponteiro();
Coroa coroa = new Coroa();
Pulseira pulseira = new Pulseira();
Relogio relogio = new Relogio();

// Inicializar os objetos
void setup(){
  // Tamanho, antialiasing e fundo
  size(700,600);
  smooth(8);  
  background(255);
  // Imagem da pulseira
  img = loadImage("pulseira.png");
  
  // Fontes de texto utilizadas
  f = createFont("Bahnschrift",14,true);
  textFont(f,10);
  fMarca = createFont("Mistral",18,true);
  textFont(fMarca,10);
  
  // Musica e video
  music = new SoundFile(this, "music.mp3");
  music.play();
  music.loop();
  video = new Movie(this, "C:/Users/yuric/Desktop/relogio2D/video.mp4");
  video.frameRate(60);
  video.play();
  video.loop();
  
  // Dimenssões do centro da tela
  float centerX = width/2;
  float centerY = height/2;
  
  // Objetos utilizadas para criação do relógio
  bisel = new Bisel(color(30,30,30), centerX, centerY, 280, 25);
  coroa = new Coroa(color(30), 476, 215, 486, 215, 493, 225, 489, 237);
  cristal = new Cristal(color(20,20,20,100), centerX, centerY, 260);
  ponteiroS = new Ponteiro(color(70,70,70,0), color(70,70,70), 2.5, centerX, centerY, centerX, centerY - cristal.getRadius()/2.5, 0.0);
  ponteiroM = new Ponteiro(color(50,50,50), color(255,255,255), 2, centerX, centerY, centerX, centerY - cristal.getRadius()/2.8, 0.0);
  ponteiroH = new Ponteiro(color(50,50,50), color(255,255,255), 2, centerX, centerY, centerX, centerY - cristal.getRadius()/4.6, 0.0);
  pulseira = new Pulseira(img, 210, 87);
  // Objeto Relogio, que une cada classe das diferentes peças de um relógio
  relogio = new Relogio(bisel, coroa, cristal, ponteiroS, ponteiroM, ponteiroH, pulseira);
}

void ambiente() {
  background(255);
  image(video, 0, -50, width+50, height+100);
  if(music.isPlaying() == true && (key == 'm' || key == 'M')) 
    music.stop();
  else if(music.isPlaying() == false  && (key == 'p' || key == 'P')) 
    music.play();
}

void draw() {
  // Musica e video do ambiente
  ambiente();
  // Display do relogio
  relogio.display();
}

// Le o video a cada frame
void movieEvent(Movie m) {
  m.read();
}
