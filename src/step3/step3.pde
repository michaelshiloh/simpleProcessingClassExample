/*
 Simple Processing class example 
 Step 3: Creating two objects using the same class
 
 based on http://www.openprocessing.org/sketch/48960
 */
int XSPEED = 4;
int YSPEED = 7;
int CIRCLESIZE = 15;

MovingCircle myCircle;
MovingCircle myOtherCircle;

void setup() {
  size(400, 400);
  smooth();
  myCircle= new MovingCircle(50, 50);
  delay(100);
  myOtherCircle= new MovingCircle(100, 100);
}

void draw() {
  // Always erase the screen first
  background(0);
  // update the position of the circle
  myCircle.update();
  myOtherCircle.update();
  // check for collisions with the walls
  myCircle.checkCollisions();
  myOtherCircle.checkCollisions();
  // and finally draw the circle
  myCircle.drawCircle();
  myOtherCircle.drawCircle();
}

// Copy the class definition from the previous step to 
// see for yourself that no changes are necessary for multiple 
// objects. (Once we have made our cookie cutter we can use
// it as many times as we want):
