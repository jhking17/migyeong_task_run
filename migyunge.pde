// 미경이가 마우스가 되서
// 따라오는 과제피하기
timer startTimer = new timer(0);
boolean isShowRed = false;
PImage img, img2, img3, img4;
PImage back, soong, stone, horse, soongstone;
int stonex;
float time1;
Player player = new Player(new PVector(width/2, height/2));
Enemy enemy = new Enemy(900, 600, 0.05);
Collision col = new Collision(player, enemy, player.GetSize());
boolean isFin = false;
float isStart = 5;

void setup()
{
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


  player.DrawPlayer();
  enemy.drawEnemy();
  if (!isFin && isStart < 0) {
    noCursor();
    startTimer.countUp();
    if (isStart < -2) {

      enemy.updatePos();
    }
    //player
    if (isRangeToMove(new PVector(mouseX, mouseY))) // check bound
      player.TrackingMouse();
  }

  if (startTimer.gettime() > 0 && startTimer.gettime() % 10 == 0) {
    enemy.setVelocity(enemy.velocity + 0.1);
  }

  isStart -= 1/frameRate;
  if (isStart > 0) {
    textSize(128);
    text((int)isStart, 40, 120);
  }
}

void fin() {
  isFin = true;
  textSize(128);
  text("Game Over", 40, 120);
}
