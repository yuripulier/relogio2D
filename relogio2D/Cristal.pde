public class Cristal {
  private color c;
  private float posX;
  private float posY;
  private float radius;
  
  // Construtor e seus argumentos
  public Cristal(color _c, float _posX, float _posY, float _radius) {
    this.c = _c;
    this.posX = _posX;
    this.posY = _posY;
    this.radius = _radius;
  }
  
  //Default
  public Cristal() {
    this(color(0,0,0), 0.0, 0.0, 0.0);
  }
  
  //GET and SET
  public color getColor() {
    return this.c;
  }
  
  public float getPosX() {
    return this.posX;
  }
  
  public float getPosY() {
    return this.posY;
  }
  
  public float getRadius() {
    return this.radius;
  }
  
  public void setColor(color _c) {
    this.c = _c;
  }
  
  public void setPosX(float _posX) {
    this.posX = _posX;
  }
  
  public void setPosY(float _posY) {
    this.posY = _posY;
  }
  
  public void setRadius(float _radius) {
    this.radius = _radius;
  }
  
  // Acende a luz do visor
  public void setLight() {
    // Luz Gradiente
    float grad = 0;
    for(int r = 0; r <= radius; r++){
      stroke(10*red(c)-grad,10*green(c)-grad,10*blue(c)-grad);
      ellipse(posX, posY, radius-r, radius-r);
      grad = grad + 1;
    }
  }
  
  void display(){
    // Fundo
    stroke(red(c)/2,green(c)/2,blue(c)/2);
    strokeWeight(5);
    fill(red(c),green(c),blue(c));
    ellipse(posX,posY,radius,radius);
    
    // Borda do Cristal
    float grad = 0;
    for(int r = 0; r <= radius; r++){
      if (5*red(c)-grad < red(c)) grad = 0;
      stroke(5*red(c)-grad,5*green(c)-grad,5*blue(c)-grad);
      ellipse(posX, posY, radius-r, radius-r);
      if (5*red(c)-grad > red(c)) grad = grad + 4;
    }
    
    // Marcaçoes de 1 a 12
    stroke(100,100,100);
    strokeWeight(2.5);
    int hour = 3;
    for (float i = 0; i < 2*PI; i+= PI/6){
      float Px1 = posX + cos(i) * (radius-175);
      float Py1 = posY + sin(i) * (radius-175);
      float Px2 = posX + cos(i) * (radius-150);
      float Py2 = posY + sin(i) * (radius-150);
      float Px3 = posX + cos(i) * (radius-139);
      float Py3 = posY+5 + sin(i) * (radius-139);
      strokeWeight(2.5);
      line(Px1, Py1, Px2, Py2);
      // Numeros
      textFont(f);
      textAlign(CENTER);
      fill(200,200,200);      // cor do texto
      if(hour<=12) text(str(hour), Px3, Py3);
      if(hour==13) text(str(1), Px3, Py3);
      if(hour==14) text(str(2), Px3, Py3);
      hour = hour + 1;
    }
    
    // Marcaçoes dos minutos
    stroke(100,100,100);
    strokeWeight(2);
    for (float i = 0; i < 2*PI; i+= PI/30){
      float Px1 = posX + cos(i) * (radius-150);
      float Py1 = posY + sin(i) * (radius-150);
      float Px2 = posX + cos(i) * (radius-155);
      float Py2 = posY + sin(i) * (radius-155);
      fill(220,0,0);  // LINHA VERMELHA NO CRISTAL
      line(Px1, Py1, Px2, Py2);
    } 
  }
}
