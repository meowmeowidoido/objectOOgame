//classes being called
Startscreen start=new Startscreen();
Player blob=new Player();
Lanes lane1=new Lanes(0,150,400,50);
Lanes lane2=new Lanes(0,250,400,50);
Lanes lane3=new Lanes(0,200,400,50);
void setup(){
  size(400,400);
}

void draw(){
  background(160,105,0);
  start.displayStartscreen();
  lane1.laneDisplay();
  lane2.laneDisplay();
  lane3.laneDisplay();
  blob.displayBlob();
  blob.updateBlob();

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
}
