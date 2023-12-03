class Startscreen 
{
  Player blob=new Player(30,225,20);
  boolean startTrue=false;
  void displayStartscreen(){
   if(startTrue==false){
     fill(255);
     rect(0,0,1000,600);
     fill(0);
     textSize(40);
     text("RUN FOR YOUR LIFE!",40,30);
     textSize(20);
     text("Press Space to Start!",125,350);
   }
    
  }
  

  
  
  
  
  
  
  
  
  
  
  
}
