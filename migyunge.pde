// 미경이가 마우스가 되서
// 따라오는 과제피하기

void setup() {
  size(800, 800);
}

Player player = new Player(new PVector(1, 1));
void draw()
{
  background(255);

  player.TrackingMouse();
}

class Collision {
  Enemy enemy;
  Player player;

  Collision(Player _player, Enemy _enemy) {
    player = _player;
    enemy = _enemy;
  }

  boolean isTrigger () {
    PVector p = player.getPosition();
    PVector e = enemy.getPosition();
    float d = p.dist(e);

    if (d < 1) {
      return true;
    } else {
      return false;
    }
  }
}

class Enemy {
  PVector getPosition () {
    return new PVector(0, 0);
  }
}
