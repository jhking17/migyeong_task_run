// 미경이가 마우스가 되서
// 따라오는 과제피하기
timer startTimer = new timer(0);
boolean isShowRed = false;
PImage img, img2, img3, img4;
PImage back, soong, stone, horse, soongstone;
int stonex;
float time1;
Player player = new Player(new PVector(0, 0));
Enemy enemy = new Enemy(width, height, 0.1);
Collision col = new Collision(player, enemy, player.GetSize());
boolean isFin = false;

void setup()
{
  size(900, 600);
  size(900, 600);
  stonex = 50;
  back = loadImage("cloud.jpg");
  back.resize(900, 400);
  soong = loadImage("school.png");
  soong.resize(300, 200);
  stone = loadImage("stone.jpg");
  stone.resize(0, 50);
  horse = loadImage("horse.png");
  horse.resize(300, 200);
  soongstone = loadImage("soongstone.png");
  soongstone.resize(130, 80);
  img = loadImage("tree3.png");
  img.resize(120, 160); 
  img2 = loadImage("tree2.png"); 
  img2.resize(110, 150);
  img3 = loadImage("tree1.png"); 
  img3.resize(110, 150); 
  img4 = loadImage("enemy.png");
  img4.resize(100, 100); 
}

void draw()
{
  _backGround();

  time();
  if (isShowRed) {
    bg_Change();
  }

  if (col.isTrigger()) {
    fin();
  }

  noCursor();
  player.DrawPlayer();
  enemy.drawEnemy();
  if (!isFin) {
    startTimer.countUp();
    enemy.updatePos();

    //player
    if (isRangeToMove(new PVector(mouseX, mouseY))) // check bound
      player.TrackingMouse();
  }

  if (startTimer.gettime() % 10 == 0) {
    enemy.setVelocity(enemy.velocity + 0.2);
  }
}

void fin() {
  isFin = true;
  textSize(128);
  text("Game Over", 40, 120);
}
