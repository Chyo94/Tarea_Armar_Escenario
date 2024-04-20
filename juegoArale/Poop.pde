class Poop{
  private PVector posicion;
  private PImage poop;
  private PVector velocidad;
  
  //CONSTRUCTOR
  public Poop(){
    poop = loadImage("nave.png");
    
  }
public Poop(PVector posicion, PVector velocidad){
  this.posicion=posicion;
  this.velocidad=velocidad;
  this.poop = loadImage("nave.png");
}


public void dibujar(){
  
  image(poop,posicion.x,posicion.y);
 this.posicion.x+=this.velocidad.x;
  }
  public void mover(){
    
     
    if(this.posicion.x==width-this.posicion.y){
      this.posicion.x=width-this.posicion.y;
      this.velocidad.x-=1;
     }
     
      if(this.posicion.x==this.posicion.y){
        this.posicion.x=this.posicion.y;
      this.velocidad.x+=1;
   }
}
}
