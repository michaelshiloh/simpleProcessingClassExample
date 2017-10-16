
/*
Step 1: A bouncing ball the old fashioned way
 */
int INITIALXSPEED = 4;
int INITIALYSPEED = 7;
int CIRCLESIZE = 15;
float ballx, bally, ballxSpeed, ballySpeed;

void setup() {
  size(400, 400);
  smooth();
  ballx = 10;
  bally = 50;
  ballxSpeed = INITIALXSPEED;
  ballySpeed = INITIALYSPEED;
}

void draw() {
  // Always erase the screen first
  background(0);

  // update the position of the circle
  ballx = ballx + ballxSpeed;
  bally = bally + ballySpeed;


  // check for collisions
  float r = CIRCLESIZE/2;
  if ( (ballx<r) || (ballx>width-r)) {
    ballxSpeed = -ballxSpeed;
  }
  if ( (bally<r) || (bally>height-r)) {
    ballySpeed = -ballySpeed;
  }
  // Finally draws the circle
  fill(255);
  ellipse(ballx, bally, CIRCLESIZE, CIRCLESIZE);
}