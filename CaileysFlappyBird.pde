// cailey ives
// game shows gray screen at beginning and takes a second to load but it works
// click mouse or press key to restart game
public void settings() {
  size(500, 700);
}
float YbirdAxis = 250; // location of bird on y axis
float XbirdxAxis = 70; // location of bird on x axis
float gravity = 5; 
int speed; 

boolean playerLost = false;

Pipe pipeOne = new Pipe(); // initializes pipeOne
Pipe pipeTwo = new Pipe(); // initializes pipeTwo
Pipe pipeThree = new Pipe(); // initializes pipeThree

void setup(){
  
  //width of pipes spaces at start
  pipeOne.pipeX = 300; 
  pipeTwo.pipeX = 450; 
  pipeThree.pipeX = 600; 
}

void draw(){
  
  background(45,150,170); // draws light blue background
  pipeOne.pipe(); 
  pipeTwo.pipe(); 
  pipeThree.pipe(); 
  fill(255,255,160); // fill bird light yellow
  ellipse(XbirdxAxis,YbirdAxis,80,80); // bird location at start and size
  YbirdAxis += gravity;  // gives bird gravity
  play(); 
  collision(pipeOne); 
  collision(pipeTwo); 
  collision(pipeThree); 
  
  if(keyPressed || mousePressed){ // if key or mouse button is pressed, reverse gravity is given to bird
    YbirdAxis -= (gravity + 15);
 }
}
    
void play(){
  
if (playerLost == false){
    // pipes move
    speed = 2; 
    pipeOne.pipeX -= speed;
    pipeTwo.pipeX -= speed;
    pipeThree.pipeX -= speed;
    fill(255); // fills pipes to white
}  
  if (playerLost == true){
    // bird and pipes stop
    speed = 0; 
    pipeOne.pipeX -= speed;
    pipeTwo.pipeX -= speed;
    pipeThree.pipeX -= speed;
    
  if (keyPressed || mousePressed){
    // bird is returned to the start
    playerLost = false;
    YbirdAxis = 100;
    pipeOne.pipeX = 300;
    pipeTwo.pipeX = 450;
    pipeThree.pipeX = 600;
  }
 }
}

void collision(Pipe test){
  // if bird hits the top or / and bottom, collision occurs and player loses
  if(YbirdAxis > height - test.bottomOfPipe || YbirdAxis < test.topOfPipe) 
  {
    if(XbirdxAxis > test.pipeX && XbirdxAxis < test.pipeX + test.pipeX) {
       playerLost = true; // rip
  }
 }
}
