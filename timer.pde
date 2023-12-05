class BubbleTimer{
  //https://youtu.be/c8sc_w-g3-A?si=HOfD3rdYNICUHdXt video used for Timer class
 //added a timer because i felt like the bubbles felt useless.
  float time;
 
  BubbleTimer(){
    
    time =100;
    
    
  }
  
 
  void displayTime(){
    rect(10,15,time,10);
  }
  void timerDown(){
    time-=20/frameRate;
    if(time<=0){
      choice=choice+1;
    }
    
  }
  
  
  
}
