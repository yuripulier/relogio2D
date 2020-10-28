public class Ponteiro {
  private color c;
  private float x1;
  private float y1;
  private float x2;
  private float y2;
  
  // Construtor e seus argumentos
  public Ponteiro(color _c, float _x1, float _y1, float _x2, float _y2) {
    this.c = _c;
    this.x1 = _x1;
    this.y1 = _y1;
    this.x2 = _x2;
    this.x2 = _y2;
  }
  
  //Default
  public Ponteiro() {
    this(color(0,0,0), 0.0, 0.0, 0.0, 0.0);
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
  
  void display(){
    // PONTEIROS
    stroke(63,54,69);
    strokeWeight(3);
    line(x1,y1-90,x2+155,y2-60);    //Superior
    line(x1,y1+115,x2+155,y2+145);  //Inferior
    line(x1,y1,x2-155,y2-55);   // Lado Direito
    
  }
}
