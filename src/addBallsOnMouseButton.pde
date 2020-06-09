

// This is the definition of the MovingCircle class.
// Start with the name of the class:
class MovingCircle {

  // any variable declared here will be properties of
  // objects of this type
  float x, y, xSpeed, ySpeed;

  // Now the functions that are part of this class:

  // This special function declaration has the same name
  // as the class (MovingCircle) and it has no return type. This
  // is known as the constructor and it's run every time a new
  // object of this type is created.
  MovingCircle(float xpos, float ypos) {
    x = xpos;
    y = ypos;
    xSpeed = XSPEED;
    ySpeed = YSPEED;
  }

  // Now come the functions (methods) of the class that
  // can be called. These functions describe what the
  // object can do:

  // The update() function adds the speed to the position, making
  // our circle move around:
  void update() {
    x += xSpeed;
    y += ySpeed;
  }

  // The checkCollisions() function checks to see if our circle has gone off
  // the edge of the screen, and if so reverses the speed and hence the direction:
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

int XSPEED = 4;
int YSPEED = 7;
int CIRCLESIZE = 15;

// create an empty array for a bunch of objects
// of type MovingCircle:
MovingCircle[] myCircleArray = new MovingCircle[10];

// Keep track of how many balls are in the array
int ballsInArray = 0;

void setup() {
  size(400, 400);
  smooth();
  // Here is where we create the objects and populate the
  // array with them
  //for (int i=0; i < myCircleArray.length; i++) {
  //  // don't start at the edge or the ball will get stuck
  //  myCircleArray[i] = new MovingCircle(random(CIRCLESIZE, width-CIRCLESIZE), 
  //                         random(CIRCLESIZE, height-CIRCLESIZE));
  //}

  //add one ball to the array
  myCircleArray[0] = new MovingCircle(random(CIRCLESIZE, width-CIRCLESIZE), 
    random(CIRCLESIZE, height-CIRCLESIZE));
  // Keep track of how many balls are in the array
  ballsInArray++;
}

void draw() {
  background(0);

  // iterate through every moving circle

  for (int i=0; i < ballsInArray; i++) {

    myCircleArray[i].update();
    myCircleArray[i].checkCollisions();

    myCircleArray[i].drawCircle();
  }
}

void mousePressed() {
  // add another ball whenever a mouse button is pressed

  // but only if we haven't filled the array
  if (ballsInArray >= myCircleArray.length) {
    println("Sorry, there is no more room in the array for more balls");
    return;
  } else {
    myCircleArray[ballsInArray] = new MovingCircle(
      random(CIRCLESIZE, width-CIRCLESIZE), 
      random(CIRCLESIZE, height-CIRCLESIZE));
    // Keep track of how many balls are in the array
    ballsInArray++;
  }
}
