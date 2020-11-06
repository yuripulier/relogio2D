public class Cristal {
  private color c;
  private float posX;
  private float posY;
  private float radius;
  private int day;
  
  // Construtor e seus argumentos
  public Cristal(color _c, float _posX, float _posY, float _radius) {
    this.setColor(_c);
    this.setPosX(_posX);
    this.setPosY(_posY);
    this.setRadius(_radius);
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
  
  public int getDay() {
    return this.day;
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
  
  private void setDay() {
    int d = day();
    if(hour() == 0) d = d - 1;
    this.day = d;
  }
  
  // Acende ou apaga a luz do visor
  public void setLight(color c, float d){
    // Luz Gradiente
    // Cristal + borda espelhada
    float grad = 0;
    for(int r = 0; r <= radius; r++){
      //if (5*red(c)-grad < red(c)) grad = 0;
      stroke(5*red(c)-grad,5*green(c)-grad,5*blue(c)-grad, alpha(c));
      ellipse(posX, posY, radius-r, radius-r);
      if (5*red(c)-grad > red(c)) grad = grad + d;
    }
  }
  
  // Display do Cristal
  public void display(){
    color fColor = color(200,200,200);
    // Fundo
    stroke(red(c)/2,green(c)/2,blue(c)/2);
    strokeWeight(5);
    fill(red(c),green(c),blue(c),alpha(c));
    ellipse(posX,posY,radius,radius);
    
    // Cristal + borda espelhada
    setDay();
    setLight(c, 4); 
    // Iluminar o relogio
    if (mousePressed == true && mouseButton == RIGHT) {
      if (mouseX >= coroa.getX1() && mouseX <= coroa.getX4() && mouseY >= coroa.getY1() && mouseY <= coroa.getY4()) {
        int l = 20;
        fColor = color(72,209,204);
        setLight(color(red(cristal.getColor())+l,green(cristal.getColor())+l,blue(cristal.getColor())+l, 18), 5);
      } 
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
      fill(fColor);      // cor do texto
      if(hour<=12) text(str(hour), Px3, Py3);
      if(hour==13) text(str(1), Px3, Py3);
      if(hour==14) text(str(2), Px3, Py3);
      hour = hour + 1;
    }
    
    // MARCA
    textFont(fMarca);  
    textAlign(CENTER);
    fill(200,200,200);
    text("[+]COSSIER", posX, posY-radius/5.5);

    // Marcaçoes dos minutos
    stroke(100,100,100);
    strokeWeight(2);
    for (float i = 0; i < 2*PI; i+= PI/30){
      float Px1 = posX + cos(i) * (radius-150);
      float Py1 = posY + sin(i) * (radius-150);
      float Px2 = posX + cos(i) * (radius-155);
      float Py2 = posY + sin(i) * (radius-155);  
      line(Px1, Py1, Px2, Py2);
    } 
    
    // Marcador do Dia
    rectMode(CORNERS);
    stroke(red(c)-4,green(c)-4,blue(c)-4);
    strokeWeight(2);
    fill(red(c)-3,green(c)-3,blue(c)-3);
    rect(posX+radius/8, posY+radius/8, posX+radius/4.5, posY+radius/5);
    stroke(60);
    strokeWeight(1.8);
    line(posX+radius/8, posY+radius/5, posX+radius/4.5, posY+radius/5);
    line(posX+radius/4.5, posY+radius/8, posX+radius/4.5, posY+radius/5);
    // Digito do dia atual
    textFont(f);  
    textAlign(CENTER);
    
    fill(fColor);
    text(getDay(), posX+radius/8 + 13, posY+radius/5 - 5);
  }
}
