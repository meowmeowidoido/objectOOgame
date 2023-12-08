class BackgroundDisplays{
  

  
  void pillars(){
    //display for the pillar torch holders
    rect(90,125,40,-150);//left pillar
    rect(190,125,40,-150);//secondary left
    rect(0,125,40,-150);//middle
    rect(280,125,40,-150);//2nd last right pillar
    rect(358,125,40,-150);//last right pillar


    
    
  }
  
  void backgroundFloor(){
    fill(155,120,70);//darkerfloor 
    rect(0,125,400,25);
    
    
  } 
  
  
  void torchHolder(){
      fill(160,140,50);
      arc(20,60,40,20,6.3,9.5);//left 1st
      arc(110,60,40,20,6.3,9.5);//left side second
      arc(210,60,40,20,6.3,9.5);//middle 
      arc(300,60,40,20,6.3,9.5);//right side second
      arc(380,60,40,20,6.3,9.5);//far right flame


      
    }
    
   void flame(){ //"flame" ellipses 
      fill(240,50,20);
      ellipse(20,39,10,40);//left 1st 
      ellipse(110,39,10,40);//left side second
      ellipse(210,39,10,40);//middle
      ellipse(300,39,10,40);//right side second
      ellipse(380,39,10,40);//far right flame


   }
   
  
    
  
  
  
  
  
}
