//classes being called
Startscreen start=new Startscreen();

ArrayList<Boulders> boulder;
ArrayList<Pits> pit;
bubbles [] bubble=new bubbles[20];
Player blob=new Player(30,225);
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
    boulder.add(new Boulders(210,random(470,1200),60,60));
    boulder.add(new Boulders(260,random(490,1200),60,60));
   
  }
  
  for(int i=0;i<3;i++){
    pit=new ArrayList<Pits>();
    pit.add(new Pits(160,random(200,400),100,100));
    pit.add(new Pits(210,random(700,900),60,60));
    pit.add(new Pits(260,random(400,500),60,60));
  }
  for(int i=0;i<bubble.length;i++){
    bubble[i]=new bubbles();
  }
  
} 

void draw(){
  int timer=40;
  background(160,105,0);
 
   if(blob.playerAlive==true && start.startTrue==true){
      fill(0);
      text("TIME",15,15);
     do{
      timer=timer-1;
     
     rect(50,5,timer,8);
   }while(timer>1);
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
      
       

    for(int b=0;b<bubble.length;b++){
     bubble[b].updateBubbles();
     bubble[b].displayBubbles();
     bubble[b].collectBubbles();
       }
   
    
       
  }
  
   for(int pits=0;pits<pit.size();pits++){
      pit.get(pits).displayPits();
      pit.get(pits).updatePits();
      pit.get(pits).pitCollision();
   }
     
   }
    
}


  
  
  



void keyPressed(){
  //start screen when the player presses space it disappears
  if(key==' '){
    if(choice==0){
    choice+=1;
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
