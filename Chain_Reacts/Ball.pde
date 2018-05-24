class Ball {
  //state of the ball
  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
  
  //threshold radius
  final float MAX_RADIUS = 50;
  
  //change factor
  final float CHANGE_FACTOR = .25;
  
  //size
  float rad;
  //color
  color c;

  //position
  float x;
  float y;
  
  //change in position
  float dx;
  float dy;
  
  //determines if the ball is moving/growing/shrinking/dead
  int state;
  
  Ball() {
    //color of the ball is randomized
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color(r,g,b);
    //randomized start location of the ball
    x = random((width - rad) + rad/2);
    y = random((height - rad) + rad/2);
    //move by a maximum of 5 in the x direction and 5 in the y direction
    dx = random(10) - 5;
    dy = random(10) - 5;
    rad = 10;
    state = MOVING;
  }
    
  void move() {
    //moves by x+cx and y+cy
    //bounces if necessary
    x = x + dx;
    y = y + dy;
    bounce();
  }
  
  void bounce() {
    //bounces if a wall is touched
    //follows the laws of physics
    if (x < 0) 
      dx = abs(dx);
    if (x > width) 
      dx = -1 * dx;
    if (y < 0)
      dy = abs(dy);
    if (y > width)
      dy = -1 * dy;
  } 
  
  void reDraw() {
    //updates ball
    if (state != DEAD);
      fill(c);
      stroke(c);
      ellipse(x,y,rad,rad);
  }
  
  void grow() {
    //grows
    rad += CHANGE_FACTOR;
  }
  
  void shrink() {
    //shrinks 
    rad -= CHANGE_FACTOR;
  }
  
  //determines what a ball should do by its state
  void whatDo() {  
    //shrinks if radius is greater than or equal to the max
    if (rad >= MAX_RADIUS) {
      state = SHRINKING;
    }
    //it is dead if its radius is less than or equal to 0
    if (rad <= 0) {
      state = DEAD;
      rad = 0;
    }
    //moves if the state is moving
    if (state == MOVING) {
      move();
    }
    //grows if the state is growing
    else if (state == GROWING) {
      grow();
    }
    //shrinks if the state is shrinking
    else if (state == SHRINKING) {
      shrink();
    }
  } 
  
  boolean collide(Ball other) {
    //derived from the distance formula
    return (x-other.x) *(x-other.x) + (y-other.y) * (y-other.y) < (rad + other.rad) * (rad+other.rad);
  }
}
