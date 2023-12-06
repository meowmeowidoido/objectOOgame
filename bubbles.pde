class bubbles{
 
  boolean bubbleCollected=false;  //initializing variable for when the player collects bubble
  PVector velocity=new PVector();//calling pvector class for velocity
  PVector position=new PVector();//calling pvector class for position
  float bubbleWidth=10;//bubble width
  float bubbleHeight=10;//height
  bubbles(){ 
   //randomizing position x and y 
  position.x=random(10,390);
  position.y=random(400,800);
 } 
 void displayBubbles(){//display bubbles function
   fill(150,50);//fill colour
   ellipse(position.x,position.y,bubbleWidth,bubbleHeight);//ellipse drawing
 } 
 void updateBubbles(){//updates bubbles
   position.x+=velocity.x;//position x plus the velocity x 
   position.y+=velocity.y;//velocity y plus position y.
   velocity.y=-2;//velocity x is -2.
   velocity.x=random(-0.5,0.5);//moves left and right.
    if(position.y<-5){//if position y is less than -5 reset and randomize position y.
   position.y=random(430,800); 
 }
 
 
 }
 
 
 //collect bubble function!
 void collectBubbles(){
   //if the distance of the bubble position x and y and the distance of the mouse x and mouse y is less than 20 it is detected
   if(dist(position.x,position.y,mouseX,mouseY)<20){//put 20 because 10 is way too hard to get the bubble
    position.x=random(10,400);  //it also randomizes their positions again bringing them back to the left side and changing their y position each time
    position.y=random(400,800); //randomizes the bubbles again
    bubbleCollected=true;//bubble collected is turned into true
     if (bubbleCollected==true){
    timerStart.time=100;//if bubble collected is true it will reset the timer.
    bubbleCollected=false;//turns back into false.
   }
     
 }
 
 
}
  
 
}
