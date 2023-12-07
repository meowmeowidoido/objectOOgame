class Player{
  boolean playerHit=false;//detects if the player has been hit.
  PVector position= new PVector ();//pvector for the position
  PImage playerImg;

 Player(float x, float y){//player constructor with y and x parameters
  position.x=x;// setting the values of the pvector position x and y to the constructor parameter values set in the class
  position.y=y;
  playerImg=loadImage("blob.png"); //blob image received from: https://lil-cthulhu.itch.io/pixelart-blob 
 }
 
 
 //returns position x
 float getPositionX(){
   return position.x;
 }
 
 //returns player radius
 float playerRadius(float w, float h){//the values are set in when the function is called.
   float radius;//float radius 
   radius=(w+h);//adds the values from the parameter which is set when the function is called
   return radius;//returns radius value
 }
 
 
 float getPositionY(){
   return position.y;//calls and returns position y 
 }
 

 void displayPlayer(){//displays 
   
   if(playerHit==false){//if playerHit is false it will show the player
   fill(150);
   imageMode(CENTER);
  // playerImg.resize(100,100);
   image(playerImg,position.x,position.y,playerRadius(20,20),playerRadius(10,10));
   
   }
 
 }
 void moveUp(){//move up function
   

   if(position.y>180){//if the players position y is greater than 180 they can move up the screen
      position.y=position.y-50;//moves them by -50 y values.
      //they cannot move if up if they are less than 180.
   
    
}
 }
void moveDown(){//move down function
    if(position.y<250){//if the players y is less than 250 they can move down 250, they cannot move more if they are above 250
      position.y=position.y+50;
   }

 
  
}

}
