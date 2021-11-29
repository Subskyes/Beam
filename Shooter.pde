Player player;
Laser[] lasers = new Laser[30000];
int lasersFired = 0;

public void setup() {
  size(800,800);
  noStroke();
  player = new Player(width/2,height/2);
  frameRate(120);
}

public void draw() {
  background(player.pos.x/2,player.pos.y/2,mouseY/height + mouseX/2);
  player.move();
  player.show();
     if (mousePressed) fireLaser();
  for (int i = 0; i < lasers.length; i++) {
    if (lasers[i] != null && lasers[i].active) {
      lasers[i].show();
      lasers[i].move();
       
    }
  }
}
public void keyPressed() {
  if (key == 'w') {
    player.vel.y = -player.SPEED;
  }
  if (key == 'a') {
    player.vel.x = -player.SPEED;
  }
  if (key == 's') {
    player.vel.y = player.SPEED;
  }
  if (key == 'd') {
    player.vel.x = player.SPEED;
  }
}
public void keyReleased() {
  if (key == 'w') {
    player.vel.y = 0;
  }
  if (key == 'a') {
    player.vel.x = 0;
  }
  if (key == 's') {
    player.vel.y = 0;
  }
  if (key == 'd') {
    player.vel.x = 0;
  }
}
 
      public void fireLaser() {
  Laser laser = new Laser(new PVector(player.pos.x,player.pos.y));
  lasers[lasersFired] = laser;
  lasersFired++;
      }
