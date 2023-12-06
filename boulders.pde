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
     fill(200,180,50);
     ellipse(position.x,position.y,bouldWidth,bouldHeight);
     
   }
   
   //function to update boulders
   void updateBoulders(){
     position.x-=2;//original speed
   
    
     
    do{//loop to increase the speed of the boulders each time they reach the end
     if(position.x<-40){
        
      //if the position.x is less than -40
      //it will increase the velocity by 0.2 each time.
      velocity.x-=0.2;
      position.x=random(500,1200);//and randomizes their position from 500-1200 X position.
   
     }
     //adds the velocity
     position.x+=velocity.x;
     //print(velocity.x); debug
      }while(velocity.x>0);//is basically looped infinitely
        
        if(p1.playerHit==true){//if the player is hit the x speed of the boulders are reset.
        position.x=0;
        position.x-=2;
        velocity.x-=0.2;
        
      }
      
      
     
   }

     
 
   
   void collisionBoulder(){//collision function
     
   //using dist function, if the dist of p1 position x, y and position of the boulders are less than the players radius it will detect them
   if(dist(p1.position.x,p1.position.y,position.x,position.y)<p1.playerRadius(10,10)){
     //player is not detected when they are boulder overlaps them when they are on a different lane
     position.x=random(500,1200); //position is reset when they are hit.
     choice=choice+1;//increases choice to 2, prompts game over screen
     //print("hi"); debug
     //print(choice); debug
     
   }

 
}  
}
