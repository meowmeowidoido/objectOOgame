class Lanes{
 float positionX;
 float positionY;
 float laneWidth;
 float laneHeight;
 boolean laneSpawn=false;
   Lanes(float x, float y, float w, float h)
   {  
     positionX=x;
     positionY=y;
     laneWidth=w;
     laneHeight=h;   
  }
  
 void laneDisplay(){
   if(laneSpawn==true){
     fill(0);
     rect(positionX,positionY,laneWidth,laneHeight);
   }
 }
  
}
