//classes being called
Startscreen start=new Startscreen();
ArrayList <Boulders> boulderL1;
ArrayList <Boulders> boulderL2;
ArrayList <Boulders> boulderL3;
ArrayList <Pits> pitL1;
ArrayList <Pits> pitL2;
ArrayList <Pits> pitL3;
bubbles [] bubble=new bubbles[20];
Player blob=new Player(30,225,20);
Lanes lane1=new Lanes(0,150,400,50);
Lanes lane2=new Lanes(0,250,400,50);
Lanes lane3=new Lanes(0,200,400,50);

int choice;
void setup(){
  size(400,400);
  frameRate(60);
  boulderL1=new ArrayList<Boulders>();
  boulderL2=new ArrayList<Boulders>();
  boulderL3=new ArrayList<Boulders>();
  boulderL1.add(new Boulders(175,random(400,900),30,30));
  boulderL2.add(new Boulders(225,random(430,900),30,30));
  boulderL3.add(new Boulders(275,random(480,900),30,30));
 
 for(int i=0;i<10;i++){
   pitL1=new ArrayList<Pits>();
  pitL1.add(new Pits(random(165,250),random(100,400),30,30));
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
    for(int i=0;i<boulderL1.size ();i++){
    boulderL1.get(i).updateBoulders();
    boulderL1.get(i).displayBoulders();
    boulderL1.get(i).collisionBoulder();
       for(int b=0;b<bubble.length;b++){
     bubble[b].updateBubbles();
     bubble[b].displayBubbles();
     bubble[b].collectBubbles();
       }
    
  
      
   
  }
  
 /*for(int t=0;t<boulderL2.size ();t++){
  boulderL2.get(t).collisionBoulder();
    boulderL2.get(t).displayBoulders();
    boulderL2.get(t).updateBoulders();

  }
  
    for(int j=0;j<boulderL3.size ();j++){
        boulderL3.get(j).updateBoulders();
      boulderL3.get(j).collisionBoulder();
        boulderL3.get(j).displayBoulders();
         
    }
   */

     
   }
    
    

    for(int i=0;i<pitL1.size();i++){
      pitL1.get(i).pitCollision(blob);
      pitL1.get(i).displayPits();
      pitL1.get(i).updatePits();
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
