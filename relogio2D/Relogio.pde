public class Relogio {
  private Bisel bisel;
  private Coroa coroa;
  private Cristal cristal;
  private Ponteiro ponteiroS, ponteiroM, ponteiroH;
  private Pulseira pulseira;
  
  // Construtor e seus argumentos
  public Relogio(Bisel _bisel, Coroa _coroa, Cristal _cristal, Ponteiro _ponteiroS, Ponteiro _ponteiroM, Ponteiro _ponteiroH, Pulseira _pulseira) {
    this.setBisel(_bisel);
    this.setCoroa(_coroa);
    this.setCristal(_cristal);
    this.setPonteiroS(_ponteiroS);
    this.setPonteiroM(_ponteiroM);
    this.setPonteiroH(_ponteiroH);
    this.setPulseira(_pulseira);
  }
  
  // Default
  public Relogio() {
    this(new Bisel(), new Coroa(), new Cristal(), new Ponteiro(), new Ponteiro(), new Ponteiro(), new Pulseira()); 
  }
  
  public Bisel getBisel() {
    return this.bisel;
  }
  
  public Coroa getCoroa() {
    return this.coroa;
  }
  
  public Cristal getCristal() {
    return this.cristal;
  }
  
  public Ponteiro getPonteiroS() {
    return this.ponteiroS; 
  }  
  
  public Ponteiro getPonteiroM() {
    return this.ponteiroM;
  }  
  
  public Ponteiro getPonteiroH() {
    return this.ponteiroH;
  }
  
  public Pulseira getPulseira() {
    return this.pulseira;
  }
  
  public void setBisel(Bisel _bisel) {
    this.bisel = _bisel;
  }
  
  public void setCoroa(Coroa _coroa) {
    this.coroa = _coroa;
  }
  
  public void setCristal(Cristal _cristal) {
    this.cristal = _cristal;
  }
  
  public void setPonteiroS(Ponteiro _ponteiroS) {
    this.ponteiroS = _ponteiroS;
  }
  
  public void setPonteiroM(Ponteiro _ponteiroM) {
    this.ponteiroM = _ponteiroM;
  }
  
  public void setPonteiroH(Ponteiro _ponteiroH) {
    this.ponteiroH = _ponteiroH;
  }
  
  public void setPulseira(Pulseira _pulseira) {
    this.pulseira = _pulseira;
  }
    
  private void setDesloca() {
    float r = sqrt(pow(abs(getCristal().getPosX() - mouseX),2) + pow(abs(getCristal().getPosY() - mouseY),2));
    if(mousePressed == true && mouseButton == LEFT) {
      if( r <= getCristal().getRadius()/2 ){
        // Bisel
        this.getBisel().setPosX(this.getBisel().getPosX() + mouseX - pmouseX);
        this.getBisel().setPosY(this.getBisel().getPosY() + mouseY - pmouseY);
        // Coroa
        this.getCoroa().setX1(this.getCoroa().getX1() + mouseX - pmouseX);
        this.getCoroa().setY1(this.getCoroa().getY1() + mouseY - pmouseY);
        this.getCoroa().setX2(this.getCoroa().getX2() + mouseX - pmouseX);
        this.getCoroa().setY2(this.getCoroa().getY2() + mouseY - pmouseY);
        this.getCoroa().setX3(this.getCoroa().getX3() + mouseX - pmouseX);
        this.getCoroa().setY3(this.getCoroa().getY3() + mouseY - pmouseY);
        this.getCoroa().setX4(this.getCoroa().getX4() + mouseX - pmouseX);
        this.getCoroa().setY4(this.getCoroa().getY4() + mouseY - pmouseY);
        // Cristal
        this.getCristal().setPosX(this.getCristal().getPosX() + mouseX - pmouseX);
        this.getCristal().setPosY(this.getCristal().getPosY() + mouseY - pmouseY);
        // Ponteiro
        this.getPonteiroS().setX1(this.getPonteiroS().getX1() + mouseX - pmouseX);
        this.getPonteiroS().setY1(this.getPonteiroS().getY1() + mouseY - pmouseY);
        this.getPonteiroM().setX1(this.getPonteiroM().getX1() + mouseX - pmouseX);
        this.getPonteiroM().setY1(this.getPonteiroM().getY1() + mouseY - pmouseY);
        this.getPonteiroH().setX1(this.getPonteiroH().getX1() + mouseX - pmouseX);
        this.getPonteiroH().setY1(this.getPonteiroH().getY1() + mouseY - pmouseY);
        this.getPonteiroS().setX2(this.getPonteiroS().getX2() + mouseX - pmouseX);
        this.getPonteiroS().setY2(this.getPonteiroS().getY2() + mouseY - pmouseY);
        this.getPonteiroM().setX2(this.getPonteiroM().getX2() + mouseX - pmouseX);
        this.getPonteiroM().setY2(this.getPonteiroM().getY2() + mouseY - pmouseY);
        this.getPonteiroH().setX2(this.getPonteiroH().getX2() + mouseX - pmouseX);
        this.getPonteiroH().setY2(this.getPonteiroH().getY2() + mouseY - pmouseY);
        // Pulseira
        this.getPulseira().setPosX(this.getPulseira().getPosX() + mouseX - pmouseX);
        this.getPulseira().setPosY(this.getPulseira().getPosY() + mouseY - pmouseY);
      }
    }
  }
  
  public void display() {
    // Atualizando ponteiros
    float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
    float m = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;
    float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) -(2*PI)/3;  // para acertar o antigo horario de verao, temos que fazer -(2*PI)/3. Apos o término do horario de verao , devemos voltar o ultimo termo para -HALF_PI.
    this.getPonteiroS().setTime(s);
    this.getPonteiroM().setTime(m);
    this.getPonteiroH().setTime(h);
    
    // Display completo do relógio
    this.getPulseira().display();
    this.getBisel().display();
    this.getCristal().display();
    this.getPonteiroS().display();
    this.getPonteiroM().display();
    this.getPonteiroH().display();
    this.getCoroa().display();

    this.setDesloca();
    
  }
}
