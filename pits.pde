class Pits
{
 
  PVector position=new PVector();
  PVector velocity=new PVector();
  float pitWidth;
  float pitHeight;
  float acceleration=-1;

  
    Pits(float y, float x, float pWidth, float pHeight){
      position.x=x;
      position.y=y;
      pitWidth=pWidth;
      pitHeight=pHeight;
    }
   
   void displayPits(){
     fill(200,180,50);
     rect(position.x,position.y,pitWidth,pitHeight);
     
   }
   
   
   void updatePits(){
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

     
   
   
   void pitCollision(){
     //still working on proper way to detect
     if(dist(position.x,position.y,blob.getPositionX(),blob.getPositionY())<30)
     {
      
       
     blob.playerHit=true;
     print("hi");
          
     
     }
   }
   
}  
