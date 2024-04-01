class Collision {
  Enemy enemy;
  Player player;
  float checkDistance;

  Collision(Player _player, Enemy _enemy, float _d) {
    player = _player;
    enemy = _enemy;
    checkDistance = _d;
  }

  boolean isTrigger () {
    PVector p = player.GetPosition();
    PVector e = enemy.GetPosition();
    float d = p.dist(e);

    if (d < checkDistance) {
      return true;
    } else {
      return false;
    }
  }
}
