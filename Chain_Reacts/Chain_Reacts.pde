Ball[] balls;

void setup() {
  size(600,600); 
  balls = new Ball[((int)random(11)) + 25];
  for (int i = 0; i < balls.length(); i ++) {
    balls[i] = new Ball();
  }
}

void draw() {
  background(0);
  
  
}
  
