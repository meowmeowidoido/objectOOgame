class Boulders
{
  Player blob=new Player();
 
  PVector position=new PVector();
  PVector velocity=new PVector();
  float bouldWidth;
  float bouldHeight;
  float acceleration=-1;

  
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
     velocity.x=-1;
     
    do{
     if(position.x<-10){
      position.x=random(500,800);

      velocity.x-=-1;
      
     }
     position.x+=velocity.x;
      }while(acceleration<-100);
        
 
   }

     
   
   
   void collisionBoulder(){
 //CODE TAKEN FROM:
//https://www.jeffreythompson.org/collision-detection/circle-circle.php
      float distanceX= blob.getPositionX()-position.x;
      float distanceY=position.y-blob.getPositionY();
      float distance= sqrt((distanceX*distanceX)+(distanceY+distanceY));
      float radiusBoulder=(bouldWidth+bouldHeight);
      float blobRadius=(blob.blobWidth()+blob.blobHeight());
        if(distance<=(radiusBoulder + blobRadius)/2){
      
     blob.playerHit=true;
     print("hi");
     
   }
   
}  
}
