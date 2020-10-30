public class Ponteiro {
  private color c1;
  private color c2;
  private float x1;
  private float y1;
  private float x2;
  private float y2;
  private float weight;
  private float time;
  
  // Construtor e seus argumentos
  public Ponteiro(color _c1, color _c2, float _weight, float _x1, float _y1, float _x2, float _y2, float _time) {
    this.setColor1(_c1);
    this.setColor2(_c2);
    this.setWeight(_weight);
    this.setX1(_x1);
    this.setY1(_y1);
    this.setX2(_x2);
    this.setY2(_y2);
    this.setTime(_time);
  }
  
  //Default
  public Ponteiro() {
    this(color(0,0,0), color(0,0,0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
  }
  
  //GET and SET
  public color getColor1() {
    return this.c1;
  }
  
  public color getColor2() {
    return this.c2;
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
  
  public float getWeight() {
    return this.weight;
  }
  
  public float getTime() {
    return this.time;
  }
  
  public void setColor1(color _c1) {
    this.c1 = _c1;
  }
  
  public void setColor2(color _c2) {
    this.c2 = _c2;
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
  
  public void setWeight(float _weight) {
    this.weight = _weight;
  }
  
  public void setTime(float _time) {
    // Sem travar o time
    if (!(keyPressed == true && (key == 's' || key == 'S'))) {
      this.time = _time; 
    }
  }
  
  public void display(){
    // PONTEIROS
    // Externo
    stroke(c1);
    strokeWeight(weight*3.5);
    line(getX1(), getY1(), getX1() + cos(time) * (getY1() - getY2()), getY1() + sin(time) * (getY1() - getY2()));
    // Interno
    stroke(c2);
    strokeWeight(weight);
    line(getX1(), getY1(), getX1() + cos(time) * (getY1() - getY2()), getY1() + sin(time) * (getY1() - getY2()));
    
    // Pino no centro dos ponteiros    
    //Externo
    stroke(c1);
    strokeWeight(3);
    fill(100,100,100);
    ellipse(x1,y1,12,12);
    //Interno
    stroke(c1);
    strokeWeight(1.5);
    fill(130,130,130);
    ellipse(x1,y1,6,6);
  }
}
