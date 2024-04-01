int backgroundMinimumY = 80;
int backgroundMaximumY = height;
int backgroundMinimumX = 100;
int backgroundMaximumX = width - 100;


boolean isRangeToMove(PVector pos)
{
  return pos.y >= 80
  && pos.y <= height - 80
  && pos.x >= 80
  && pos.x <= width -80;
}

void _backGround() {
  image(back, 0, 0); 
  image(soong, 600, 0);
  image(horse, 283, -15);
  image(soongstone, 109, 26);
  noStroke();
  fill(#FFA46C);
  rect(0, 100, 900, 600);
  fill(#E18048);
  rect(0, 130, 900, 570);
  fill(#BD5C24);
  rect(0, 170, 900, 530);
  image(stone, 0, 100);
  image(stone, 0, 150);
  image(stone, 0, 200);
  image(stone, 0, 250);
  image(stone, 0, 300);
  image(stone, 0, 350);
  image(stone, 0, 400);
  image(stone, 0, 450);
  image(stone, 0, 500);
  image(stone, 0, 550);
  image(stone, 0, 600);
  image(stone, 50, 550);
  image(stone, 125, 550);
  image(stone, 200, 550);
  image(stone, 275, 550);
  image(stone, 350, 550);
  image(stone, 425, 550);
  image(stone, 500, 550);
  image(stone, 575, 550);
  image(stone, 625, 550);
  image(stone, 700, 550);
  image(stone, 775, 550);
  image(stone, 825, 550);
  image(stone, 825, 100);
  image(stone, 825, 150);
  image(stone, 825, 200);
  image(stone, 825, 250);
  image(stone, 825, 300);
  image(stone, 825, 350);
  image(stone, 825, 400);
  image(stone, 825, 450);
  image(stone, 825, 500);
  image(stone, 825, 550);
  image(stone, 825, 600);
  image(img, 780, 450); 
  image(img3, 660, 470); 
  image(img2, 720, 470);
  image(img, 0, 450); 
  image(img3, 140, 470); 
  image(img2, 70, 470);
  
  isShowRed = 0 <= int(time1%10) &&  int(time1%10) < 1 && time1 > 1;
}

void time() {
  time1 = startTimer.gettime();
  String time2 = (int)time1 / 60 + " M " + (int)time1 % 60 + " S";
  fill(0);
  textSize(30);
  strokeWeight(10);
  text(time2, 255, 100);
}

void bg_Change() {
  fill(255, 0, 0, 80);
  rect(0, 0, 900, 600);  
}
