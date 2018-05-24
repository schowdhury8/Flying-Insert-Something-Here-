class Ball {
  //size
  final int radius = 10;
  //color
  color c;

  // position
  float x;
  float y;
  
  //change in position
  float cx;
  float cy;
  
  Ball() {
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color(r,g,b);
    //randomized start location of the ball
    x = random((width - radius) + radius/2);
    y = random((height - radius) + radius/2);
    //move by a maximum of 5 in the x direction and 5 in the y direction
    cx = random(10) - 5;
    cy = random(10) - 5;
  }
  
  void move() {
    x = x + cx;
    y = y + cy;
    bounce();
  }
  
  void bounce() {
    if (x < 0) 
      cx = abs(dx);
    if (x > width) 
      cx = -1 * dx;
    if (y < 0)
      cy = abs(cy);
    if (y > width)
      cy = -1 * cy;
  } 
  
  void reDraw() {
    fill(c);
    stroke(c);
    ellipse(x,y,radius,radius);
    
  }
}
