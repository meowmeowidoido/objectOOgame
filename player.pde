class Player{
  boolean playerAlive=false;
  boolean playerHit=false;
  PVector position= new PVector ();
 Player(float x, float y){
  position.x=x;
  position.y=y;
  
 }
 
 
 float getPositionX(){
   return position.x;
 }
 
 float getPositionY(){
   return position.y;
 }
 
 
 void displayBlob(){
   
   if(playerAlive==true){
   fill(150);
   ellipse(position.x,position.y,20,20);
   
   }
 
 }
 void moveUp(){
   

   if(position.y>180){
      position.y=position.y-50;
   
    
}
 }
void moveDown(){
    if(position.y<250){
      position.y=position.y+50;
   }

 
  
}

}
