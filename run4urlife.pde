//classes being called
Startscreen start=new Startscreen();
ArrayList <Boulders> boulderL1;
ArrayList <Boulders> boulderL2;
ArrayList <Boulders> boulderL3;
Player blob=new Player();
Lanes lane1=new Lanes(0,150,400,50);
Lanes lane2=new Lanes(0,250,400,50);
Lanes lane3=new Lanes(0,200,400,50);
int choice;
void setup(){
  size(400,400);
  frameRate(10000);
  boulderL1=new ArrayList<Boulders>();
  boulderL2=new ArrayList<Boulders>();
  boulderL3=new ArrayList<Boulders>();
  boulderL1.add(new Boulders(175, random(600,900),30,30));
  boulderL2.add(new Boulders(225,random(600,900),30,30));
  boulderL3.add(new Boulders(275,random(600,900),30,30));

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
    
  
      
   
  }
  
 for(int t=0;t<boulderL2.size ();t++){
    boulderL2.get(t).collisionBoulder();
    boulderL2.get(t).displayBoulders();
    boulderL2.get(t).updateBoulders();

  }
  
    for(int j=0;j<boulderL3.size ();j++){
        boulderL3.get(j).updateBoulders();
        boulderL3.get(j).collisionBoulder();
        boulderL3.get(j).displayBoulders();
        
    }
   
 
  
   if(blob.playerHit==true)
   {
     //time=
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
