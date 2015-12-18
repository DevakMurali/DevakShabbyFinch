//finch Driver 
import edu.cmu.ri.createlab.terk.robot.finch.*;

Finch myFinch = new Finch();
String directionText = "No Direction";
void draw(){
  text(directionText, 14, 20);
}
void setup() {
  //First we choose how big our window is going to be
  //This is in pixels
  size(640,640);
}
void keyPressed(){
  if(keyCode == LEFT){
    myFinch.setWheelVelocities(-255,255);
    directionText = "Left";
  }
    if(keyCode == RIGHT){
    myFinch.setWheelVelocities(255,-255);
    directionText = "Right";
  }
    if(keyCode == UP){
    myFinch.setWheelVelocities(255,255);
    directionText = "Forward";
  }
    if(keyCode == DOWN){
    myFinch.setWheelVelocities(-255, -255);
    directionText = "Backwards";
  }
  if(keyCode == 32){
  myFinch.setLED(int(random(0,255)),int(random(0,255)),int(random(0,255)));
  }
}
void keyReleased(){
  myFinch.setWheelVelocities(0,0);
}