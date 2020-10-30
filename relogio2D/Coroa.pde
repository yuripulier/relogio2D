public class Coroa {
  private color c;
  private float x1;
  private float y1;
  private float x2;
  private float y2;
  private float x3;
  private float y3;
  private float x4;
  private float y4;

  // Construtor e seus argumentos
  public Coroa(color _c, float _x1, float _y1, float _x2, float _y2, float _x3, float _y3, float _x4, float _y4) {
    this.setColor(_c);
    this.setX1(_x1);
    this.setY1(_y1);
    this.setX2(_x2);
    this.setY2(_y2);
    this.setX3(_x3);
    this.setY3(_y3);
    this.setX4(_x4);
    this.setY4(_y4);
  }
  
  //Default
  public Coroa() {
    this(color(0,0,0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
  }

  //GET and SET
  public color getColor() {
    return this.c;
  }
  
  public float getX1() {
    return this.x1;
  }
  
  public float getY1() {
    return this.y1;
  }
  
  public float getX2() {
    return this.x2;
  }
  
  public float getY2() {
    return this.y2;
  }
  
  public float getX3() {
    return this.x3;
  }
  
  public float getY3() {
    return this.y3;
  }
  
  public float getX4() {
    return this.x4;
  }
  
  public float getY4() {
    return this.y4;
  }
  
  public void setColor(color _c) {
    this.c = _c;
  }
  
  public void setX1(float _x1) {
    this.x1 = _x1;
  }
  
  public void setY1(float _y1) {
    this.y1 = _y1;
  }
  
  public void setX2(float _x2) {
    this.x2 = _x2;
  }
  
  public void setY2(float _y2) {
    this.y2 = _y2;
  }
  
  public void setX3(float _x3) {
    this.x3 = _x3;
  }
  
  public void setY3(float _y3) {
    this.y3 = _y3;
  }
  
  public void setX4(float _x4) {
    this.x4 = _x4;
  }
  
  public void setY4(float _y4) {
    this.y4 = _y4;
  }
  
  public void display(){
    stroke(c);
    fill(c);
    quad(x1,y1,x2,y2,x3,y3,x4,y4);
  }
}
