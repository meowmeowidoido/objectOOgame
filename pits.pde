class Pits
{
 
  PVector position=new PVector();
  PVector velocity=new PVector();
  float pitWidth;
  float pitHeight;
  float acceleration=-1;
  boolean hit=false;
  
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

     
   boolean playerPit(float playerX, float playerY, float playerR, float x, float y, float w, float h){
  
   //CODE FROM:  https://www.jeffreythompson.org/collision-detection/object_oriented_collision.php//
   //I'm Sorry Collision Detection was just not working for me using arraylists and objects
   float checkX=playerX; 
   float checkY=playerY;
     if(playerX<x) checkX=x;
     else if(playerX>x+w) checkX=x+w;
     if (playerY<y)  checkY=y;
     else if(playerY>y+h) checkY=y+h;
     
     
     float distX=playerX-checkX;
     float distY=playerY-checkY;
     float distance=sqrt((distX*distX)+(distY+distY));
     if(distance<=playerR){
       return true;
     }
     return false;
   }
   
   void pitCollision(Player player){
     //still working on proper way to detect
     
     hit=playerPit(player.x,player.y,player.r,position.x,position.y,pitWidth,pitHeight);
    if(hit){
      print("HIT");
    }
   }
   
}  
