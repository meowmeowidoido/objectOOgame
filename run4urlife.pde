//classes being called
Startscreen start=new Startscreen();

ArrayList<Boulders> boulder;
bubbles [] bubble=new bubbles[20];
Player blob=new Player(30,225,30);
Lanes lane1=new Lanes(0,150,400,50);
Lanes lane2=new Lanes(0,250,400,50);
Lanes lane3=new Lanes(0,200,400,50);

int choice;
void setup(){
  size(400,400);
  frameRate(60);
  for(int i=0;i<3;i++){
    boulder=new ArrayList<Boulders>();
    boulder.add(new Boulders(160,random(450,1200),60,60));
    boulder.add(new Boulders(210,random(450,1200),60,60));
    boulder.add(new Boulders(260,random(450,1200),60,60));

  }
  for(int i=0;i<bubble.length;i++){
    bubble[i]=new bubbles();
  }
  
}

void draw(){
  int time=millis()/1000;
  background(160,105,0);
   text("TIME: "+time,1,15);
   if(blob.playerAlive==false && start.startTrue==true){
     time=millis()/1000;
   }
  start.displayStartscreen();
  lane1.laneDisplay();
  lane2.laneDisplay();
  lane3.laneDisplay();
  blob.displayBlob();
  
  
  switch (choice){
    case 1:
    start.startTrue=true;
    blob.playerAlive=true;
    blob.playerHit=false;
    lane1.laneSpawn=true;
    lane2.laneSpawn=true;
    lane3.laneSpawn=true;
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
    
  
      
   
  }
  
 
   

     
   }
    
 


  
  
  



void keyPressed(){
  //start screen when the player presses space it disappears
  if(key==' '){
    choice+=1;
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
