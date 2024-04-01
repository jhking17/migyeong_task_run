int backgroundMinimumY = 80;

boolean isRangeToMove(PVector pos)
{
  return pos.y >= backgroundMinimumY
  && pos.y <= height
  && pos.x >= 0
  && pos.x <= width;
}

void _backGround() {
  image(back, 0, 0);
  image(soong, 600, 0);
  noStroke();
  fill(#FFA46C);
  rect(0, 100, 900, 600);
  fill(#E18048);
  rect(0, 130, 900, 570);
  fill(#BD5C24);
  rect(0, 170, 900, 530);
  image(stone, 0, 100);
  image(img, 780, 450);
  image(img6, 660, 470);
  image(img2, 720, 470);
  image(img3, 0, 450);
  image(img5, 140, 470);
  image(img4, 70, 470);
  
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
