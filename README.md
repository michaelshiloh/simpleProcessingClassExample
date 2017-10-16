# simpleProcessingClassExample



Suppose you wanted a couple of circles (balls) bouncing around in a box. You
might do something like
this:

[example 1]()



Copy this code into a new Processing sketch and run it. Read the code and
understand what it’s doing.
Now suppose you wanted two balls, or 10, or 100. You’d have to copy all of
that. Isn’t there a better way?
For instance, much of the code is the same, it’s just dealing with a
different ball. Wouldn’t it be nice to
describe the ball behavior once, and then have it automatically know how to
do that to all the balls?
There is a way, using classes and objects. Here is the same program using
objects:


[Example 2]()

If you want two balls, you don’t need to redefine the class, just create
more objects:


[Example 3]()

But that seems like the class didn’t really save us that much work. Why use
classes? Answer: it really
  helps when you want to make lots of objects, and you use arrays instead of
  individual names for each
  object:
Source code
