public class Bisel {
  private color c;
  private color c2;
  private float posX;
  private float posY;
  private float radius;
  private float breadth;

  // Construtor e seus argumentos
  public Bisel(color _c, color _c2, float _posX, float _posY, float _radius, float _breadth) {
    this.setColor(_c);
    this.setColor(_c2);
    this.setPosX(_posX);
    this.setPosY(_posY);
    this.setRadius(_radius);
    this.setBreadth(_breadth);
  }
  
  //Default
  public Bisel() {
    this(color(0,0,0), color(0,0,0), 0.0, 0.0, 0.0, 0.0);
  }

  //GET and SET
  public color getColor() {
    return this.c;
  }
  
  public color getColor2() {
    return this.c2;
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
  
  public void setColor2(color _c2) {
    this.c2 = _c2;
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
  
  public void setBreadth(float _breadth) {
    this.breadth = _breadth;
  }
  
  // Display do Bisel
  public void display(){
    int c2 = 60;
    float r = 3;
    ellipseMode(CENTER);
    // Aureola 1
    stroke(red(c)+c2/3,green(c)+c2/3,blue(c)+c2/3);
    strokeWeight(3*breadth/2);
    ellipse(posX,posY,radius-(r*4),radius-(r*4));
    // Aureola 2
    stroke(red(c),green(c),blue(c));
    strokeWeight(breadth-r);
    ellipse(posX,posY,radius,radius);
    // Aureola 3
    stroke(red(c)+c2,green(c)+c2,blue(c)+c2);
    strokeWeight(breadth/6);
    ellipse(posX,posY,radius+r,radius+r);
    // Aureola 4
    stroke(red(c)+c2/3,green(c)+c2/3,blue(c)+c2/3);
    strokeWeight(breadth/6);
    ellipse(posX,posY,radius-r,radius-r);
    // Aureola 5
    stroke(red(c)-c2/2,green(c)-c2/2,blue(c)-c2/2);
    strokeWeight(breadth/10);
    ellipse(posX,posY,radius-r*3,radius-r*3);
    // Aureola 6 - Circulo vermelho
    stroke(220,0,0);
    strokeWeight(breadth/10);
    ellipse(posX,posY,radius-r*4,radius-r*4);
  }
}
