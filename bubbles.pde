class bubbles{
  int points;
  PVector velocity=new PVector();
  PVector position=new PVector();
  float bubbleWidth=20;
  float bubbleHeight=20;
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
   velocity.y=-1;
   velocity.x=random(-0.5,0.5);
    if(position.y<-5){
   position.y=random(430,800); 
 }
 }
 
 int collectBubbles(){
   if(mousePressed && dist(position.x,position.y,mouseX,mouseY)<20){
    position.x=random(10,400);  //it also randomizes their positions again bringing them back to the left side and changing their y position each time
    position.y=random(400,800);  
       
       points++;
       
       
    
 }
 return points;
 
}
  
 
}
