Player player; //<>//
Enemy[] enemies = new Enemy[10];
Laser[] lasers = new Laser[30000];
int lasersFired = 0;
int round = 30000;
LSight lsight;

public void setup() {
  size(1200, 800);
  player = new Player(width/2, height/2);
  lsight = new LSight(player.pos.copy());
  spawnEnemies();
  frameRate(240);
}

public void draw() {
  background(100, 100, 100);
  player.move();
  player.show();
  lsight.show();
  for (int i = 0; i < enemies.length; i++) {
    if (enemies[i].hp > 0){
    enemies[i].show();
    enemies[i].move();
    }

    for (int j = 0; j < lasers.length; j++) {
      if (lasers[i] != null && lasers[i].active) {
        Enemy oneE = enemies[j];
        if (oneE.active)
          lasers[i].collides(oneE);
      }
    }
  }
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
  //lasersFired = 0;
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
  Laser laser = new Laser(new PVector(player.pos.x, player.pos.y));
  lasers[lasersFired] = laser;
  lasersFired++;
}
private void spawnEnemies() {
  for (int i = 0; i < enemies.length; i++) {
    enemies[i] = new Enemy((int)(Math.random()*height), width);
  }
}
