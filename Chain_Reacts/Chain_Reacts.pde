Ball[] balls;
boolean zombieInfection;

void setup() {
  //sets the size of the screen
  size(600,600); 
  //random amount of balls 
  balls = new Ball[((int)random(11)) + 25];
  //zombie infection isn't started until the mouse is clicked
  zombieInfection = false;
  //populates balls with balls
  for (int i = 0; i < balls.length; i ++) {
    balls[i] = new Ball();
  }
  //sets the first ball to be a dead ball 
  //it is activated when the mouse is clicked
  balls[0].state = Ball.DEAD;
}

void draw() {
  background(0);
  //iterates through the balls looking for growing/shrinking balls
  for (int i = 0; i < balls.length; i++) {
    if (balls[i].state == Ball.GROWING || balls[i].state == Ball.SHRINKING) {
      for (int k = 0; k < balls.length; k++) {
        //if a moving ball touches a growing/shrinking ball, it is infected!
        if (balls[k].state == Ball.MOVING && balls[k].collide(balls[i])) {
          balls[k].state = Ball.GROWING;
        }
      }
    }
  }
  //updates the balls
  for (int i = 0; i < balls.length; i ++) {
    balls[i].reDraw();
    balls[i].whatDo();
  }
}
  
void mouseClicked() {
  //starts the zombieInfection if it hasn't started
  if (!zombieInfection) {
    //ball at where the mouse was clicked
    balls[0].x=mouseX;
    balls[0].y=mouseY;
    //it starts growing
    balls[0].rad = 0.01;
    balls[0].state = Ball.GROWING;
    zombieInfection = true;
      
}
  
}
  
