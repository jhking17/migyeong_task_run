class Collision {
  Enemy enemy;
  Player player;

  Collision(Player _player, Enemy _enemy) {
    player = _player;
    enemy = _enemy;
  }

  boolean isTrigger () {
    PVector p = player.GetPosition();
    PVector e = enemy.GetPosition();
    float d = p.dist(e);

    if (d < 10) {
      return true;
    } else {
      return false;
    }
  }
}
