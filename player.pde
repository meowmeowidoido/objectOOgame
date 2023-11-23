class Player{
  boolean playerAlive=false;
  float playerX=30;
  float playerY=220;
 
 void displayBlob(){
   
   if(playerAlive==true){
   fill(150);
   ellipse(playerX,playerY,20,30);
   
   }
   constrain(playerY,170,270);
   
 }
 void updateBlob(){
   
   frameRate(10);
   if(keyPressed){
   if(key==CODED){
    if(keyCode==UP){
      playerY-=50;
    
}
if(keyCode==DOWN){
      playerY+=50;
    }

   
  
  
  
}
}
}
}
