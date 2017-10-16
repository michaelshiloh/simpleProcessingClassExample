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

// There are no changes here 
// since the class definition doesn't change for multiple 
// objects. (Once we have made our cookie cutter we can use
// it as many times as we want):

class MovingCircle {
  // any variable declared here will be properties of

  // objects of this type
  float x;
  float y;
  float xSpeed;
  float ySpeed;

  // Now the functions that are part of this class

  // this special function declaration has the same name
  // as the class (MovingCircle) and it has no return type. This
  // is known as the constructor and it's run when an
  // object of this type is created.
  MovingCircle(float xpos, float ypos) {
    x = xpos;
    y = ypos;
    xSpeed = XSPEED;
    ySpeed = YSPEED;
  }

  // Now come the functions (methods) of the class that
  // can be called. These functions describe what the
  // class can do:

  // update adds the speed to the position, making
  // our circle move around.
  void update() {
    x += xSpeed;
    y += ySpeed;
  }

  // this function checks to see if our circle has gone off
  // the edge of the screen, and if so reverses the speed
  void checkCollisions() {
    float r = CIRCLESIZE/2;
    if ( (x<r) || (x>width-r)) {
      xSpeed = -xSpeed;
    }
    if ( (y<r) || (y>height-r)) {
      ySpeed = -ySpeed;
    }
  }

  // This function finally draws the circle
  void drawCircle() {

    fill(255);
    ellipse(x, y, CIRCLESIZE, CIRCLESIZE);
  }
} // End of the MovingCircle class
