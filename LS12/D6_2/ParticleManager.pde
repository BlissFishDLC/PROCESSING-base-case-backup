class ParticleManager{
 
  ArrayList<Particle> pList = new ArrayList<Particle>();

   
  ParticleManager(){
   
  }
   
  void add(int xPos, int yPos){
    pList.add(new Particle(xPos,yPos)); 
  }
   
  void display(){
    for(int i=0; i<pList.size(); i++){
      Particle p =  (Particle) pList.get(i);
    
      p.draw();
      
    }
  }
   
  void updater(int attractorX, int attractorY){
    for(int i=0; i<pList.size(); i++){
      Particle p =  (Particle) pList.get(i);
      p.update(attractorX, attractorY);
      if(p.finished()==true){
        pList.remove(i);
      }
    }
  }
}
