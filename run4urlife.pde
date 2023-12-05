//classes being called
BubbleTimer timerStart= new BubbleTimer();
Startscreen start=new Startscreen();

ArrayList<Lanes> laneDist;
ArrayList<Boulders> boulder;
ArrayList<Pits> pit;
bubbles [] bubble=new bubbles[10];
bubbles bubblePoints=new bubbles();
Player blob=new Player(30,225);
Lanes lane1=new Lanes(0,150,400,50);
Lanes lane2=new Lanes(0,250,400,50);
Lanes lane3=new Lanes(0,200,400,50);

int finaldistance;
int choice;
void setup(){
  size(400,400);
  frameRate(60);

  for(int d=0;d<3;d++){
    laneDist=new ArrayList<Lanes>();
    laneDist.add(new Lanes(0,0,0,0));
  }
  for(int i=0;i<3;i++){
    pit=new ArrayList<Pits>();
    pit.add(new Pits(150,random(200,400),20,50));
    pit.add(new Pits(200,random(700,900),20,50));
    pit.add(new Pits(250,random(400,500),20,50));
    for( i=0;i<bubble.length;i++){
    bubble[i]=new bubbles();
  }
  
  }
  
    for(int i=0;i<3;i++){
    boulder=new ArrayList<Boulders>();
    boulder.add(new Boulders(160,random(450,1200),60,60));
    boulder.add(new Boulders(210,random(470,1200),60,60));
    boulder.add(new Boulders(260,random(490,1200),60,60));
   
  }
  
}

void draw(){
  background(160,105,0);
  switch (choice){
    case 0:
     start.displayStartscreen();
     break;
    case 1: 
    timerStart.timerDown();
    timerStart.displayTime();
    lane1.laneDisplay();
    lane2.laneDisplay();
    lane3.laneDisplay();
    blob.displayBlob();
    start.gameStart();
    for(int i=0;i<boulder.size();i++){
      boulder.get(i).displayBoulders();
      boulder.get(i).updateBoulders();
      boulder.get(i).collisionBoulder();
    
  }
     
     for(int b=0;b<bubble.length;b++){
     bubble[b].updateBubbles();
     bubble[b].displayBubbles();
     bubble[b].collectBubbles();
       }        
      for(int d=0;d<laneDist.size();d++){
        laneDist.get(d).laneDistance();
        
      }
      fill(255);
      text("DISTANCE: "+lane1.laneDistance(),160,15);
      
   for(int pits=0;pits<pit.size();pits++){
      pit.get(pits).displayPits();
      pit.get(pits).updatePits();
      pit.get(pits).pitCollision(blob);
   }
   text("Bubbles: "+bubblePoints.getPoints(),290,15);
   finaldistance=lane1.distance;
   break;
 case 2:
        timerStart.time=100;
        start.overGame=true;
        lane1.distance=0;
        start.gameOverScreen();
        break;
   }
  
  fill(255);
  
  
}





void keyPressed(){
  //start screen when the player presses space it disappears
  if(key==' '){
    print(choice);
    if(choice==0){
    choice+=1;
    }
    if(choice==2){
      choice=choice-1;
    }
    
  }
  if(key==CODED){
    if(keyCode==UP){
    blob.moveUp();
  }
  if(keyCode==DOWN){
    blob.moveDown();
  }
}
}
