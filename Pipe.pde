class Pipe {

  float pipeX; // initializes pipeX variable
  float topOfPipe = random(050,200); // top pipe spawn point (y axis length)
  float bottomOfPipe = random(170,200); // bottom pipe spawn point (y axis length)
   
void pipe(){
    rect(pipeX,0,60,topOfPipe); // parameters for top pipe + spawn
    rect(pipeX,height-bottomOfPipe,60,bottomOfPipe); // parameters for bottom pipe + spawn
    
   if(pipeX<-100){ 
     pipeX = width; // pipe x axis takes up entire screen
     topOfPipe = random(100,200); //randomizes top pipes
     bottomOfPipe = random(200,400); // randomizes bottom pipes 
  }
 }
}
