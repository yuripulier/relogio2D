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
  
  void display(){
    // Fundo
    stroke(red(c)/2,green(c)/2,blue(c)/2);
    strokeWeight(1);
    fill(red(c),green(c),blue(c));
    ellipse(posX,posY,radius,radius);
    // Marcaçoes
    stroke(100,100,100);
    strokeWeight(2.5);
    line(posX, posY-110, posX, posY-85);  // 12
    //line(posX+57.6, posY-52.4, posX+55, posY-27.4);  // 1   tentando realizar as macacoes, mas ja ta tarde e vou deixar pra depois hehe
    line(posX, posY-110, posX, posY-85);  // 2
    line(posX+85, posY, posX+110, posY);  // 3
    line(posX, posY-110, posX, posY-85);  // 4
    line(posX, posY-110, posX, posY-85);  // 5
    line(posX, posY+85, posX, posY+110);  // 6
    line(posX, posY-110, posX, posY-85);  // 7
    line(posX, posY-110, posX, posY-85);  // 8
    line(posX-110, posY, posX-85, posY);  // 9
    line(posX, posY-110, posX, posY-85);  // 10
    line(posX, posY-110, posX, posY-85);  // 11
  }
}
