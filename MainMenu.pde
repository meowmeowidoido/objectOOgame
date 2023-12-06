class MainMenu
{  //a boolean for when the game has started, set to false at first
   boolean startTrue=false;
  //a boolean for when the game over set to false
  boolean overGame=false;
  void displayStartscreen(){//start screen function
  
   if(startTrue==false){
     //start screen 
     fill(0);
     rect(0,0,1000,600);
     fill(255);
     textSize(40);
     text("DODGE 4 UR LIFE!",50,30);
     textSize(20);
     text("Press Space to Start!",125,350);
       
       }
       
    
   }
 
  
   void gameStart(){
     //restarting all the game booleans so that the game functions
    overGame=false;
    menu.startTrue=true;
    p1.playerHit=false;
    lane1.laneSpawn=true;
    lane2.laneSpawn=true;
    lane3.laneSpawn=true;
  }
  
  void gameOverScreen(){//game over screen function 
    if(overGame==true){//if game over is true it will make the following occur
      fill(0);//black background
     rect(0,0,1000,4000);
     fill(255);//white
         text("GAME OVER", 150,200);
         text("DISTANCE REACHED: "+finaldistance,100,250);//displays the final distance
         text("PRESS SPACE TO RETRY",100,300);//tells the player to press space to retry
         choice=2;//choice variable becomes 2. player presses space again it becomes 1.
    //setting the lanespawns to zero so they disappear
    lane1.laneSpawn=false;
    lane2.laneSpawn=false;
    lane3.laneSpawn=false;
    
         
    }
    
  }
  

  
  
  
  
  
  
  
  
  
  
  
}
