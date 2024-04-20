private Escenario fondo;
private Bloques bloques;
private Personaje arale;
private Poop navePoop;

public void setup(){
size(550,366);
fondo = new Escenario();
bloques = new Bloques();
arale = new Personaje();
navePoop = new Poop();
arale.setPosicion(new PVector(width/2,height-85));
arale.setVelocidad(new PVector(10,10));
navePoop = new Poop(new PVector(70,70), new PVector(1,10));

}

public void draw(){
  //
  fondo.dibujarFondo();
  bloques.dibujar();
  arale.dibujarPersonaje();
  actualizarVelocidadArale();
  navePoop.dibujar();
  navePoop.mover();
  
}
public void mousePressed(){
  if(mouseButton==LEFT){
    arale.mover(1);
  }
  if(mouseButton==RIGHT){
    arale.mover(2);
  }
 }
 public void actualizarVelocidadArale(){
   if(arale.getPosicion().x<(width)){
     arale.getVelocidad().x=30;
   }else{
     arale.getVelocidad().x=10;
   }
 }
 
