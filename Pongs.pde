int YLpaddle =350;
int YRpaddle = 350;

int ballX = width / 2;
int ballY = height / 2;

boolean moveRight = true;
boolean moveDown = true;

int speedSide = 3;
int speedVertical = 4;

void setup() {
  size(700,700);
  background(0);
}

void draw(){
 background(0);
 
 fill(250,0,0);
 ellipse(ballX,ballY,50,50);
 
 fill(0,250,0);
 rect(20,YLpaddle,30,100);
 
 fill(0,0,255);
 rect(630,YRpaddle,30,100);
 
 if (keyPressed == true && key == 'w')
 {
   YLpaddle = YLpaddle - 6;
 }
 
 if (keyPressed == true && key == 's')
 {
   YLpaddle = YLpaddle + 6;
 }
 
 
  if (keyPressed == true && key == 'p')
 {
   YRpaddle = YRpaddle - 6;
 }

 
   if (keyPressed == true && key == 'l')
 {
   YRpaddle = YRpaddle + 6;
 }
 
 
 if (moveRight == true)
 {
   ballX = ballX + speedSide;
 }
 
 else{
   ballX = ballX - speedSide;
 }
 
 if(moveDown == true)
 {
   ballY = ballY + speedVertical;
 }
 
 else
 {
  ballY = ballY - speedVertical;
 }


if (ballY >= 690){
  moveDown = false;
  //speedSide = speedSide ;
}
  

if(ballX <= 10){
  moveRight = true;
}

if(ballX >= 700){
  ballX = width/2;
  ballY = height/2;
}

if(ballX <= 0){
  ballX = width/2;
  ballY = height/2;
}


 
 if(ballX >= 615 && ballY > YRpaddle && ballY < (YRpaddle + 100)){
   moveRight = false;.<7i
 }
 
  if(ballX >= 615 && ballY > YLpaddle && ballY < (YLpaddle + 100)){
   moveRight = false;
 }
 
 

}
