public class Pulseira {
  private PImage pulseira;
  
  // Construtor e seus argumentos
  public Pulseira(PImage _pulseira) {
    this.setPulseira(_pulseira);
  }
  
  //Default
  public Pulseira() {
    this(new PImage());
  }
  
  //GET and SET
  public PImage getPulseira() {
    return this.pulseira;
  }  
  
  public void setPulseira(PImage _pulseira) {
    this.pulseira = _pulseira;
  }
  
  public void display(){
    // Pulseira
    // Variaveis
    loadPixels();
    getPulseira().loadPixels();
    image(getPulseira(),210,87);
  }
}
