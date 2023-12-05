class Lanes{
 float positionX;
 float positionY;
 float laneWidth;
 float laneHeight;
 int distance;
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
     fill(200,100,20);
     rect(positionX,positionY,laneWidth,laneHeight);
 
   }
 }
 
  int laneDistance(){
  
   distance=distance+1;

   return distance;
 }
 
  
}
