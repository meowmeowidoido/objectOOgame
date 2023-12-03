class Player{
  boolean playerAlive=false;
  boolean playerHit=false;
  float x;
  float y;
  float r;
    Player(float playerX, float playerY,float playerR){
      x=playerX;
      y=playerY;
      r=playerR;
    }
 
 
 float getPositionX(){
   return x;
 }
 
 float getPositionY(){
   return y;
 }
 
 float blobRadius(){
   return r;
 }
 
 void displayBlob(){
   
   if(playerAlive==true){
   fill(150);
   ellipse(x,y,r,r);
   
   }
 
 }
 void moveUp(){
   

   if(y>170){
      y-=50;
   
    
}
 }
void moveDown(){
    if(y<250){
      y+=50;
   }

   
  
  
  
}

}
