public class Enemy {
  private PVector pos, vel, gravity;
  private final int   SIZE = 20;
  private int hp;
  public boolean active = true;
  
  public Enemy (float x, float y) {
   hp = 10;
    pos = new PVector (x,y);
     vel = new PVector((int)(Math.random()*1000),((int)(Math.random()*1000))).sub(pos).setMag(5);
     gravity = new PVector(player.pos.x,player.pos.y).sub(pos).setMag(.2);
  }
  
  public void show() {
    fill (pos.x/2*-1, pos.y/2*-1,pos.x/2 + pos.y/2*-1,255);
    circle(pos.x, pos.y, SIZE);
    noStroke();
  }
  
  public void move() {
    vel.add(gravity);
  pos.add(vel);
 
  if(pos.x > width-SIZE || pos.x < SIZE - 5) {
     active = false;
    }
    if(pos.y > height-SIZE || pos.y < SIZE - 5) {
      active = false;
    }
  }
}
