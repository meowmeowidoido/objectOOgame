class Boulders
{
 
  PVector position=new PVector();//pvector class called for the position
  PVector velocity=new PVector();//pvector class called for the velocity
  float bouldWidth;//boulder width
  float bouldHeight;//boulder height
  
    Boulders(float y, float x, float bWidth, float bHeight){//constructor with parameters,
      position.x=x;//position.x takes x 
      position.y=y;//position.y takes y
      bouldWidth=bWidth; //bouldWidth float takes bwidth
      bouldHeight=bHeight;//same thing
    }
   
   //function to display boulders
   void displayBoulders(){
     fill(155,103,60);
     ellipse(position.x,position.y,bouldWidth,bouldHeight);
     
   }
   
   //function to update boulders
   void updateBoulders(){
     position.x-=2;//original speed
      if(p1.playerHit==true){//if the player is hit the x speed of the boulders are reset.
        position.x=0;
        position.x-=2;
        velocity.x-=0.5;
        position.sub(position);
        if(p1.playerHit==true)
        {
          position.x=2;
          position.x-=2;
          velocity.x=0.5;
          velocity.x-=0.5;
        }
        if(velocity.x==5.00){
          velocity.x=5.00;//velocity cannot go higher than 5.00
          
        }
        
      }
    do{//loop to increase the speed of the boulders each time they reach the end
     if(position.x<-100){
        
      //if the position.x is less than -40
      //it will increase the velocity by 0.2 each time.
      velocity.x-=0.2;
      position.x=random(400,2000);//and randomizes their position from 500-1200 X position.
   
     }
     //adds the velocity
     position.x+=velocity.x;
     //print(velocity.x); debug
      }while(velocity.x>0);//is basically looped infinitely
        
       
      
      
     
   }
   
   void collisionBoulder(){//collision function
     
   //using dist function, if the dist of p1 position x, y and position of the boulders are less than the players radius it will detect them
   if(PVector.dist(position,p1.position)<p1.playerRadius(20,10)){//made boulder hitbox small to allow the player to move through the small gaps in between two slight side by side boulders 
     //player is not detected when they are boulder overlaps them when they are on a different lane
     position.x=random(400,1200); //position is reset when they are hit.
     choice=choice+1;//increases choice to 2, prompts game over screen
     //print("hi"); debug
     //print(choice); debug
     
   }

 
}  

}
