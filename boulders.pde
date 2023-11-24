class Boulders
{
 
  PVector position=new PVector();
  PVector velocity=new PVector();
    Boulders(float y, float x){
      position.x=x;
      position.y=y;
      
    }
   
   void displayBoulders(){
     fill(200,180,50);
     ellipse(position.x,position.y,20,20);
     
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
}  
