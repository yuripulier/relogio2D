public class Relogio {
  private float wheelCount = 0;
  private float mx=0;
  private float my=0;
  private float zoom=1;
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
  
  public void display() {
    // Atualizando ponteiros
    float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
    float m = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;   // minute() + norm(second(), 0, 60) -> para que os minutos caminhem com o passar dos segundos
    float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
    this.getPonteiroS().setTime(s);
    this.getPonteiroM().setTime(m);
    this.getPonteiroH().setTime(h);
    // Display completo do relógio
    this.getBisel().display();
    this.getCristal().display();
    this.getPonteiroS().display();
    this.getPonteiroM().display();
    this.getPonteiroH().display();
    this.getPulseira().display();
    this.getCoroa().display();
  }
}
