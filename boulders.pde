class Boulders
{
  Player blob=new Player();
 
  PVector position=new PVector();
  PVector velocity=new PVector();
  float bouldWidth;
  float bouldHeight;
    Boulders(float y, float x, float bWidth, float bHeight){
      position.x=x;
      position.y=y;
      bouldWidth=bWidth;
      bouldHeight=bHeight;
      
      
    }
   
   void displayBoulders(){
     fill(200,180,50);
     ellipse(position.x,position.y,bouldWidth,bouldHeight);
     
   }
   
   void updateBoulders(){
     position.x+=velocity.x;
     position.y+=velocity.y;
     //velocity.y=random(-1,1);
     velocity.x=-0.2;
     
     if(position.x<-5){
      position.x=random(500,1200);
     }
     
   }
   
   void collisionBoulder(){
//dist(position.x,position.y,blob.getPositionX(),blob.getPositionY())<(20+20))
      float distanceX= blob.getPositionX()-position.x;
      float distanceY=blob.getPositionY()- position.y;
      float distance= sqrt((distanceX*distanceX)+(distanceY+distanceY));
      float radiusBoulder=bouldWidth+bouldHeight/2;
      float blobRadius=blob.blobWidth()+blob.blobHeight()/2;
        if(distance<=(radiusBoulder + blobRadius)){
        if(blob.getPositionX()+blob.blobWidth()/2>position.x &&blob.getPositionX()<position.x+bouldWidth/2&&blob.getPositionY()<=position.y+bouldHeight && blob.getPositionY()+blob.blobHeight()/2>position.y){
     blob.playerHit=true;
     print("hi");
          
     }
    
   }
   
}  
}
