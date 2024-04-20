class Personaje{
  private PVector posicion;
  private PImage arale;
  private PVector velocidad;
  
 //CONSTRUCTOR
  public Personaje(){
  arale = loadImage("Arale.png");
}

public void dibujarPersonaje(){
  imageMode(CENTER);
  noTint();
  image(arale,posicion.x,posicion.y);
}

public void mover(int direccion){
  if(direccion==1){
    this.posicion.x-=this.velocidad.x;
  }
  if(direccion==2){
    this.posicion.x+=this.velocidad.x;
  }
}
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
 }   
    public PVector getVelocidad(){
      return this.velocidad;
    }
    
    public void setVelocidad(PVector velocidad){
      this.velocidad=velocidad;
    }
  
  
  
  

}
