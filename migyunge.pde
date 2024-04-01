// 미경이가 마우스가 되서
// 따라오는 과제피하기
public timer startTimer = new timer(0);
PImage img, img2, img3, img4, img5, img6, img7, img8;
PImage back, soong, stone;
float time1;
Player player = new Player(new PVector(0, 0));
Enemy enemy = new Enemy(width, height, 0.1);
Collision col = new Collision(player, enemy);

void setup()
{
  size(900, 600);
  back = loadImage("cloud.jpg");
  back.resize(900, 400);
  soong = loadImage("school.png");
  soong.resize(300, 200);
  stone = loadImage("stone.jpg");
  stone.resize(0, 50);
  img = loadImage("tree3.png");
  img.resize(120, 160);
  img2 = loadImage("tree2.png");
  img2.resize(110, 150);
  img3 = loadImage("tree3.png");
  img3.resize(120, 160);
  img4 = loadImage("tree2.png");
  img4.resize(110, 150);
  img5 = loadImage("tree1.png");
  img5.resize(110, 150);
  img6 = loadImage("tree1.png");
  img6.resize(110, 150);
  img7 = loadImage("tree1.png");
  img7.resize(110, 150);
  img8 = loadImage("tree1.png");
  img8.resize(110, 150);
}

void draw()
{
  _backGround();
  
  time();
  if (10<time1) {
    bg_Change();
  }
  
  if(col.isTrigger()){
    fin();
  }
  //playeer
  player.TrackingMouse();
  player.DrawPlayer();
  enemy.update();
  
  
}

void fin(){
  textSize(128);
  text("Game Over", 40, 120);  
}
