
/*
 Example 2: Creating a class
 based on http://www.openprocessing.org/sketch/48960
 */
int XSPEED = 4;
int YSPEED = 7;
int CIRCLESIZE = 15;
// make some MovingCircle objects (MovingCircle is a custom object
// defined below

MovingCircle myCircle = new MovingCircle();

void setup() {

  size(400, 400);
  smooth();
}
void draw() {
  // Always erase the screen first
  background(0);
  // update the position of the circle
  myCircle.update();
  // check for collisions with the walls
  myCircle.checkCollisions();
  // and finally draw the circle
  myCircle.drawCircle();
}
// this is the definition for our custom MovingCircle class,
// start with the name of the class
class MovingCircle {
  // any variable declared here will be properties of
  // objects of this type
  float x, y, xSpeed, ySpeed;
  // Now the functions that are part of this object

  //this special function declaration has the same name
  //  as the class (MovingCircle) and it has no return type. This
  //  is known as the constructor and it's run when an
  //              object of this type is created.
  MovingCircle(float xpos, float ypos) {
    x = xpos;
    y = 
      ypos;
    xSpeed = XSPEED;
    ySpeed = YSPEED;
  }

  // Now come the functions (methods) of the object that
  // can be called. These functions describe what the
  // object can do:
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


//If you want two balls, you don’t need to redefine the class, just create more objects:
//Source code
//  4 of 9
//  10/16/17, 10:
//30 AMSimple Processing class example | Teach Me To Make
//  https://web.archive.org/web/20161110130054/http...
//Go OCT NOV JAN
///*
//                example 3: Creating two objects using the same class
// 23 captures
// 2015 2016 2017
// based
// on http://www.openprocessing.org/sketch/48960
// 19 Jun 2014
// - 17 Mar 2017
// */
//  10
//  🗔 ⍰ ❎
//  f 🐦
//  ▾ About this capture
//  int XSPEED = 4;
//int YSPEED = 7;
//int CIRCLESIZE = 15;
//MovingCircle myCircle;
//MovingCircle myOtherCircle;
//void setup() {
//  size(400, 400);
//  smooth();
//  myCircle= new MovingCircle(50, 50);
//  delay(100);
//  myOtherCircle= new MovingCircle(100, 100);
//}
//void draw() {
//  // Always erase the screen first
//  background(0);
//  // update the position of the circle
//  myCircle.update();
//  myOtherCircle.update();
//  // check for collisions with the walls
//  myCircle.checkCollisions();
//  myOtherCircle.checkCollisions();
//  // and finally draw the circle
//  myCircle.drawCircle();
//  myOtherCircle.drawCircle();
//}
//// this is the definition for our custom MovingCircle class,
//// start with the name of the class
//class MovingCircle {
//  // any variable declared here will be properties of
//  5 of 9
//  10/16/17, 10:
//  30 AMSimple Processing class example | Teach Me To Make
//  https://web.archive.org/web/20161110130054/http...
//  // objects of this type
//  float x;
//  23 captures
//    float y;
//  19 Jun 2014 - 17 Mar 2017
//    float xSpeed;
//  float ySpeed;
//  Go
//    OCT NOV JAN
//    10
//    2015 2016 2017
//    🗔 ⍰ ❎
//    f 🐦
//    ▾ About this capture
//    // Now the functions that are part of this object
//    // this special function declaration has the same name
//    // as the class (MovingCircle) and it has no return type. This
//    // is known as the constructor and it's run when an
//    // object of this type is created.
//    MovingCircle(float xpos, float ypos) {
//    x = xpos;
//    y = ypos;
//    xSpeed = XSPEED;
//    ySpeed = YSPEED;
//  }
//  // Now come the functions (methods) of the object that
//  // can be called. These functions describe what the
//  // object can do:
//  // update adds the speed to the position, making
//  // our circle move around.
//  void update() {
//    x += xSpeed;
//    y += ySpeed;
//  }
//  // this function checks to see if our circle has gone off
//  // the edge of the screen, and if so reverses the speed
//  void checkCollisions() {
//    float r = CIRCLESIZE/2;
//    if ( (x<r) || (x>width-r)) {
//      xSpeed = -xSpeed;
//    }
//    if ( (y<r) || (y>height-r)) {
//      ySpeed = -ySpeed;
//    }
//  }
//  6 of 9
//  10/16/17, 10:
//  30 AMSimple Processing class example | Teach Me To Make
//  https://web.archive.org/web/20161110130054/http...
//  Go
//    // This function finally draws the circle
//    23 captures
//    void drawCircle() {
//    19 Jun 2014 - 17 Mar 2017
//      fill(255);
//    ellipse(x, y, CIRCLESIZE, CIRCLESIZE);
//    OCT NOV JAN
//      10
//      2015 2016 2017
//      🗔 ⍰ ❎
//      f 🐦
//      ▾ About this capture
//  }
//} // End of the MovingCircle class
//But that seems like the class didn’t really save us that much work. Why use classes? Answer: it really
//  helps when you want to make lots of objects, and you use arrays instead of individual names for each
//  object:
//Source code
///*
//example 4: Creating an array of objects using a class
// based on http://www.openprocessing.org/sketch/48960
// */
//  int XSPEED = 4;
//int YSPEED = 7;
//int CIRCLESIZE = 15;
//// create an empty array for 100 MovingCircle objects
//MovingCircle[] myCircleArray = new MovingCircle[100];
//void setup() {
//  size(400, 400);
//  smooth();
//  // and actually create the objects and populate the
//  // array with them
//  for (int i=0; i < myCircleArray.length; i++) {
//    myCircleArray[i] = new MovingCircle(random(0, width), random(0, height)
//  }
//}
//void draw() {
//  background(0);
//  7 of 9
//  10/16/17, 10:
//  30 AMSimple Processing class example | Teach Me To Make
//  https://web.archive.org/web/20161110130054/http...
//  // iterate through every moving circle
//  Go
//    OCT NOV JAN
//    for (int i=0; i < myCircleArray.length; i++) {
//    23 captures
//      19 Jun 2014 - 17 Mar 2017
//      myCircleArray[i].update();
//    myCircleArray[i].checkCollisions();
//    10
//      2015 2016 2017
//      🗔 ⍰ ❎
//      f 🐦
//      ▾ About this capture
//      myCircleArray[i].drawCircle();
//  }
//}
//// this is the definition for our custom MovingCircle class,
//// start with the name of the class
//class MovingCircle {
//  // any variable declared here will be properties of
//  // objects of this type
//  float x;
//  float y;
//  float xSpeed;
//  float ySpeed;
//  // Now the functions that are part of this object
//  // this special function declaration has the same name
//  // as the class (MovingCircle) and it has no return type. This
//  // is known as the constructor and it's run when an
//  // object of this type is created.
//  MovingCircle(float xpos, float ypos) {
//    x = xpos;
//    y = ypos;
//    xSpeed = XSPEED;
//    ySpeed = YSPEED;
//  }
//  // Now come the functions (methods) of the object that
//  // can be called. These functions describe what the
//  // object can do:
//  // update adds the speed to the position, making
//  // our circle move around.
//  void update() {
//    x += xSpeed;
//    8 of 9
//    10/16/17, 10:
//    30 AMSimple Processing class example | Teach Me To Make
//    https://web.archive.org/web/20161110130054/http...
//    y += ySpeed;
//  }
//  23 captures
//    19 Jun 2014 - 17 Mar 2017
//    Go
//    OCT NOV JAN
//    10
//    2015 2016 2017
//    // this function checks to see if our circle has gone off
//    // the edge of the screen, and if so reverses the speed
//    🗔 ⍰ ❎
//    f 🐦
//    ▾ About this capture
//    void checkCollisions() {
//    float r = CIRCLESIZE/2;
//    if ( (x<r) || (x>width-r)) {
//      xSpeed = -xSpeed;
//    }
//    if ( (y<r) || (y>height-r)) {
//      ySpeed = -ySpeed;
//    }
//  }
//  // This function finally draws the circle
//  void drawCircle() {
//    fill(255);
//    ellipse(x, y, CIRCLESIZE, CIRCLESIZE);
//  }
//} // End of the MovingCircle class

//*/