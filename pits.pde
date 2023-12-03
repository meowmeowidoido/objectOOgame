class Pits
{
 
  PVector position=new PVector();
  PVector velocity=new PVector();
  float pitWidth;
  float pitHeight;

  
    Pits(float y, float x, float pWidth, float pHeight){
      position.x=x;
      position.y=y;
      pitWidth=pWidth;
      pitHeight=pHeight;
    }
   
   void displayPits(){
     fill(0,100,50);
     rect(position.x,position.y,pitWidth,pitHeight);
     
   }
   
   
   void updatePits(){
     position.x=position.x-velocity.x;
     velocity.x-=1;
     position.y+=velocity.y;
     
     

      position.x=random(500,800);

   }
     
   
   
   void pitCollision(){
     if(dist(position.x,position.y,blob.getPositionX(),blob.getPositionY())<30)
     {
   
     print("hi");
          
     
     }
   }
   
}  
