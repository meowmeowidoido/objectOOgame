class Lanes{
 float positionX;//position x 
 float positionY;//position y 
 float laneWidth;//lame width
 float laneHeight;//lane height
 int distance;//counts the distance the player "travels"
 boolean laneSpawn=false;//lane spawn is set to false, basically makes the lanes appear on screen
   Lanes(float x, float y, float w, float h)//constructor with parameters
   {  
     //setting variables to the values of the constructor parameters.
     positionX=x;
     positionY=y;
     laneWidth=w;
     laneHeight=h;   
  }
  
 void laneDisplay(){//displays lanes.
   if(laneSpawn==true){//if the lane spawn is set to true it the lanes appear.
     fill(200,100,20);//colour of lanes
     rect(positionX,positionY,laneWidth,laneHeight);//drawing of lanes (rect)
 
   }
 }
 
  int laneDistance(){//lane distance 
  
   distance=distance+1;//increases when player is alive
 
   return distance;//returns distance.
 }
 
  
}
