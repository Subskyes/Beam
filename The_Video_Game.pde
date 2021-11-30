Player player;
Laser[] lasers = new Laser[30000];
int lasersFired = 0;
int round = 10;
LSight lsight;

public void setup() {
  size(1200,800);
  noStroke();
  player = new Player(width/2,height/2);
  lsight = new LSight(player.pos);
  frameRate(120);
}

public void draw() {
  background(100,100,100);
  player.move();
  player.show();
  lsight.show();
  lsight.move();
     if (mousePressed && lasersFired < round) fireLaser();
  for (int i = 0; i < lasers.length; i++) {
    if (lasers[i] != null && lasers[i].active) {
      lasers[i].show();
      lasers[i].move();
    }
  }
  
}
public void keyPressed() {
  //move up
  if (key == 'w') {
    player.vel.y = -player.SPEED;
  }
  if (key == '8') {
    player.vel.y = -player.SPEED;
  }
  //move left
  if (key == 'a') {
    player.vel.x = -player.SPEED;
  }
  if (key == '4') {
    player.vel.x = -player.SPEED;
  }
  //move down
  if (key == 's') {
    player.vel.y = player.SPEED;
  }
    if (key == '2') {
    player.vel.y = player.SPEED;
  }
  //move right
  if (key == 'd') {
    player.vel.x = player.SPEED;
  }
   if (key == '6') {
    player.vel.x = player.SPEED;
  }
}
public void mouseReleased() {
    lasersFired = 0;
}
public void keyReleased() {
  // stop moving up
    if (key == 'w') {
    player.vel.y = 0;
  }
   if (key == '8') {
    player.vel.y = 0;
  }
  //stop moving left
  if (key == 'a') {
    player.vel.x = 0;
  }
   if (key == '4') {
    player.vel.x = 0;
  }
  //stop moving down
  if (key == 's') {
    player.vel.y = 0;
  }
  if (key == '2') {
    player.vel.y = 0;
  }
  //stop moving right
  if (key == 'd') {
    player.vel.x = 0;
  }
  if (key == '6') {
    player.vel.y = 0;
  }
}
 
      public void fireLaser() {
  Laser laser = new Laser(new PVector(player.pos.x-10,player.pos.y-10));
  lasers[lasersFired] = laser;
  lasersFired++;
      }
