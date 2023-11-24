//classes being called
Startscreen start=new Startscreen();
ArrayList <Boulders> boulderL1;
ArrayList <Boulders> boulderL2;
ArrayList <Boulders> boulderL3;
Player blob=new Player();
Lanes lane1=new Lanes(0,150,400,50);
Lanes lane2=new Lanes(0,250,400,50);
Lanes lane3=new Lanes(0,200,400,50);
void setup(){
  size(400,400);
  frameRate(10000);
  boulderL1=new ArrayList<Boulders>();
  boulderL2=new ArrayList<Boulders>();
  boulderL3=new ArrayList<Boulders>();
  boulderL1.add(new Boulders(170));
  boulderL2.add(new Boulders(225));
  boulderL3.add(new Boulders(275));

}

void draw(){
  
  background(160,105,0);
  start.displayStartscreen();
  lane1.laneDisplay();
  lane2.laneDisplay();
  lane3.laneDisplay();
  blob.displayBlob();
  
  
  for(int i=0;i<boulderL1.size();i++){
    boulderL1.get(i).updateBoulders();
    boulderL2.get(i).updateBoulders();
    boulderL3.get(i).updateBoulders();
    boulderL1.get(i).displayBoulders();
    boulderL2.get(i).displayBoulders();
    boulderL3.get(i).displayBoulders();
  
  }
   

  
  
  

}

void keyPressed(){
  //start screen when the player presses space it disappears
  if(key==' '){
    start.startTrue=true;
    blob.playerAlive=true;
    lane1.laneSpawn=true;
    lane2.laneSpawn=true;
    lane3.laneSpawn=true;
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
