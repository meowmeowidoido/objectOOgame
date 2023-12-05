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
     position.x-=3;
     position.y+=velocity.y;
    
     
   
     if(position.x<-10){
      position.x=random(1200,1900);

    
        
 
   }

   } 
   
   
   void pitCollision(Player player){
  
    
         if(dist(position.x+pitWidth/2,position.y+pitHeight/2,player.getPositionX(),player.getPositionY())<player.playerRadius(10,10))
         { 
           position.x=random(500,1200);

           choice=choice+1;
         //  print("hi");
           
     
     
}

   }
   
}
     
 

   
  
