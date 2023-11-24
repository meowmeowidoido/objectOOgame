class Player{
  boolean playerAlive=false;
  float playerX=30;
  float playerY=220;
 
 void displayBlob(){
   
   if(playerAlive==true){
   fill(150);
   ellipse(playerX,playerY,20,30);
   
   }
 
 }
 void moveUp(){
   

   if(playerY>170){
      playerY-=50;
   
    
}
 }
void moveDown(){
  if(playerY<250){
      playerY+=50;
    }

   
  
  
  
}

}
