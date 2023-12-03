class bubbles{
  PVector velocity=new PVector();
  PVector position=new PVector();
  float bubbleWidth=10;
  float bubbleHeight=10;
  bubbles(){ 
  position.x=random(10,390);
  position.y=random(400,800);
 } 
 void displayBubbles(){
   fill(150,50);
   ellipse(position.x,position.y,bubbleWidth,bubbleHeight);
 } 
 void updateBubbles(){
   position.x+=velocity.x;
   position.y+=velocity.y;
   velocity.y=-2;
   velocity.x=random(-0.5,0.5);
 }
 
 void collectBubbles(){
   if(dist(position.x,position.y,mouseX,mouseY)<10){
    position.x=random(10,400);  //it also randomizes their positions again bringing them back to the left side and changing their y position each time
    position.y=random(400,800);   
    
    
 }
 if(position.y<-5){
   position.y=random(430,800); 
 }
 

}
 
}
