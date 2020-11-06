public class Pulseira {
  private PImage pulseira;
  private float posX;
  private float posY;
  
  // Construtor e seus argumentos
  public Pulseira(PImage _pulseira, float _posX, float _posY) {
    this.setPulseira(_pulseira);
    this.setPosX(_posX);
    this.setPosY(_posY);
  }
  
  //Default
  public Pulseira() {
    this(new PImage(), 0.0, 0.0);
  }
  
  //GET and SET
  public PImage getPulseira() {
    return this.pulseira;
  }  
  
  public float getPosX() {
    return this.posX;
  }
  
  public float getPosY() {
    return this.posY;
  }
  
  public void setPosX(float _posX) {
    this.posX = _posX;
  }
  
  public void setPosY(float _posY) {
    this.posY = _posY;
  }
  
  public void setPulseira(PImage _pulseira) {
    this.pulseira = _pulseira;
  }
  
  public void display(){
    // Pulseira
    // Variaveis
    loadPixels();
    this.getPulseira().loadPixels();
    image(this.getPulseira(), this.getPosX(), this.getPosY());  // 210, 87
  }
}
