class Boulders
{
 
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
     position.x-=1;
     position.y+=velocity.y;
 
     
    do{
     if(position.x<-10){
      

      velocity.x-=0.2;
      
     }
     position.x+=velocity.x;
   //  print(velocity.x);
      }while(velocity.x<-10);
        
     if(position.x<-10){
       position.x=random(500,800);
     }
   }

     
   
   
   void collisionBoulder(){
   if(dist(blob.position.x,blob.position.y,position.x,position.y)<30){
      
     blob.playerHit=true;
     print("hi");
     
   }
   
}  
}
