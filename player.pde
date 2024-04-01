class Player
{
  PVector Position;
  boolean isAlive = false;

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
    fill(0);
    circle(Position.x, Position.y, 5);
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
