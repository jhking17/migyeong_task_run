class Player
{
  PVector Position;
  boolean isAlive = false;
  
  int imageSize = 80;
  
  int curFrame = 0;
  int animationChangeIntrval = 7;

  Player(PVector startPos)
  {
    SetLiveSetting(true);
    SetPosition(startPos);
  }

  void SetLiveSetting(boolean alive)
  {
    isAlive = alive;
  }

  void DrawPlayer()
  {
    curFrame++;
    if((curFrame /animationChangeIntrval) % 2 == 0)
    img = loadImage("player1.png");
    else
    img = loadImage("player2.png");
   
    image(img, Position.x - imageSize/2, Position.y - imageSize/2,imageSize,imageSize);
  }

  void TrackingMouse()
  {
    if (!isAlive)
      return;

    SetPosition(new PVector(mouseX, mouseY));
  }

  void SetPosition(PVector position)
  {
    Position = position;
  }
  
  PVector GetPosition()
  {
    return Position;
  }
}
