class Startscreen 
{
  boolean startTrue=false;
  void displayStartscreen(){
    
   if(startTrue==false){
     fill(0);
     rect(0,0,1000,600);
     fill(255);
     textSize(40);
     text("RUN FOR YOUR LIFE!",40,30);
     textSize(20);
     text("Press Space to Start!",125,350);
       if(blob.playerHit==true && blob.playerAlive==false){
         fill(255);
         text("GAME OVER", 150,350);
         choice-=1;
       }
   }
    
  }
  

  
  
  
  
  
  
  
  
  
  
  
}
