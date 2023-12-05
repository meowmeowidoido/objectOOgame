class Player{
 
  boolean playerHit=false;
  PVector position= new PVector ();
 Player(float x, float y){
  position.x=x;
  position.y=y;
  
 }
 
 
 float getPositionX(){
   return position.x;
 }
 
 float playerRadius(float w, float h){
   float radius;
   radius=(w+h);
   return radius;
 }
 
 
 float getPositionY(){
   return position.y;
 }
 

 void displayBlob(){
   
   if(playerHit==false){
   fill(150);
   ellipse(position.x,position.y,playerRadius(10,10),playerRadius(10,10));
   
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
