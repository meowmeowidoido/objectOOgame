class Startscreen 
{
  Boulders bouldHit=new Boulders(0,0,0,0);
  boolean startTrue=false;
  boolean overGame=false;
  void displayStartscreen(){
    
   if(startTrue==false){
     fill(0);
     rect(0,0,1000,600);
     fill(255);
     textSize(40);
     text("RUN FOR YOUR LIFE!",40,30);
     textSize(20);
     text("Press Space to Start!",125,350);
       
       }
       
    
   }
 
  
   void gameStart(){
    overGame=false;
    start.startTrue=true;
    blob.playerHit=false;
    lane1.laneSpawn=true;
    lane2.laneSpawn=true;
    lane3.laneSpawn=true;
  }
  
  void gameOverScreen(){
    if(overGame==true){
      fill(0);
     rect(0,0,1000,4000);
     fill(255);
         text("GAME OVER", 150,200);
         text("DISTANCE REACHED: "+finaldistance,100,250);
         choice=2;
   
    lane1.laneSpawn=false;
    lane2.laneSpawn=false;
    lane3.laneSpawn=false;
    
         
    }
    
  }
  

  
  
  
  
  
  
  
  
  
  
  
}
