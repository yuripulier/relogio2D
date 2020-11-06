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
  
  // Atualiza a posicao do relogio
  private void setNewPos(float dx, float dy) {
    // Bisel
    this.getBisel().setPosX(this.getBisel().getPosX() + dx);
    this.getBisel().setPosY(this.getBisel().getPosY() + dy);
    // Coroa
    this.getCoroa().setX1(this.getCoroa().getX1() + dx);
    this.getCoroa().setY1(this.getCoroa().getY1() + dy);
    this.getCoroa().setX2(this.getCoroa().getX2() + dx);
    this.getCoroa().setY2(this.getCoroa().getY2() + dy);
    this.getCoroa().setX3(this.getCoroa().getX3() + dx);
    this.getCoroa().setY3(this.getCoroa().getY3() + dy);
    this.getCoroa().setX4(this.getCoroa().getX4() + dx);
    this.getCoroa().setY4(this.getCoroa().getY4() + dy);
    // Cristal
    this.getCristal().setPosX(this.getCristal().getPosX() + dx);
    this.getCristal().setPosY(this.getCristal().getPosY() + dy);
    // Ponteiro
    this.getPonteiroS().setX1(this.getPonteiroS().getX1() + dx);
    this.getPonteiroS().setY1(this.getPonteiroS().getY1() + dy);
    this.getPonteiroM().setX1(this.getPonteiroM().getX1() + dx);
    this.getPonteiroM().setY1(this.getPonteiroM().getY1() + dy);
    this.getPonteiroH().setX1(this.getPonteiroH().getX1() + dx);
    this.getPonteiroH().setY1(this.getPonteiroH().getY1() + dy);
    this.getPonteiroS().setX2(this.getPonteiroS().getX2() + dx);
    this.getPonteiroS().setY2(this.getPonteiroS().getY2() + dy);
    this.getPonteiroM().setX2(this.getPonteiroM().getX2() + dx);
    this.getPonteiroM().setY2(this.getPonteiroM().getY2() + dy);
    this.getPonteiroH().setX2(this.getPonteiroH().getX2() + dx);
    this.getPonteiroH().setY2(this.getPonteiroH().getY2() + dy);
    // Pulseira
    this.getPulseira().setPosX(this.getPulseira().getPosX() + dx);
    this.getPulseira().setPosY(this.getPulseira().getPosY() + dy);
  }
  
  // Atualiza as condicoes para que o deslocamento ocorra
  private void setDesloca() {
    float r = sqrt(pow(abs(this.getCristal().getPosX() - mouseX),2) + pow(abs(this.getCristal().getPosY() - mouseY),2));
    // Deslocamento do relogio
    if (mousePressed == true && mouseButton == LEFT && mouseX>0 && mouseX<width && mouseY>0 && mouseY<height) {
      if (r <= this.getCristal().getRadius()/2){        
        this.setNewPos(mouseX - pmouseX, mouseY - pmouseY);
      }
    }
    // Limitando a janela para que não seja possível sumir com o relógio da tela
    if (this.getCristal().getPosX() <= 0) {
      this.setNewPos(-this.getCristal().getPosX(), 0);
    }
    if (this.getCristal().getPosX() >= width) {
      this.setNewPos(-this.getCristal().getPosX()+width, 0);
    }
    if (this.getCristal().getPosY() <= 0) {
      this.setNewPos(0, -this.getCristal().getPosY());
    }
    if (this.getCristal().getPosY() >= height) {
      this.setNewPos(0, -this.getCristal().getPosY()+height); 
    }
  }
  
  // Display do relogio
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
    
    // Deslocamento do relogio
    this.setDesloca();
  }
}
