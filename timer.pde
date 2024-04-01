class timer
{
  float time;
  timer(float set) //constructor when you create a new timer
  {
    time = set;
  }
  float gettime() // returns the current time
  {
    return(time);
  }
  void settime(float set)// set the timer to whatever you put as you temp variable ie. 10, 60 seconds
  {
    time = set;
  }
  void countUp() //update the timer by counting up. this need to be called within void draw() to work.
  {
    time += 1/frameRate;
  }
  void countDown()
  {
    time -= 1/frameRate;
  }
}
