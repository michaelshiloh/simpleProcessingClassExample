/*
 Step 4: Creating an array of objects using a class
 based on http://www.openprocessing.org/sketch/48960
 */
 
int XSPEED = 4;
int YSPEED = 7;
int CIRCLESIZE = 15;

// create an empty array for a bunch of objects
// of type MovingCircle:
MovingCircle[] myCircleArray = new MovingCircle[10];

void setup() {
  size(400, 400);
  smooth();
  // Here is where we create the objects and populate the
  // array with them
  for (int i=0; i < myCircleArray.length; i++) {
    myCircleArray[i] = new MovingCircle(random(0, width), random(0, height));
  }
}

void draw() {
  background(0);

  // iterate through every moving circle

  for (int i=0; i < myCircleArray.length; i++) {

    myCircleArray[i].update();
    myCircleArray[i].checkCollisions();

    myCircleArray[i].drawCircle();
  }
}

// Copy the class definition from the previous step to 
// see for yourself that no changes are necessary for multiple 
// objects. (Once we have made our cookie cutter we can use
// it as many times as we want):
