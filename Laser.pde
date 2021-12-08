public class Laser {
  private PVector pos, vel;
  private final int rad = 25;
  private boolean active = true;
  public float hp = 10.0;
  
  public Laser(PVector pos) {
    this.pos = pos;
    vel = new PVector(mouseX,mouseY).sub(pos).setMag(7.5);
  }
  
  public void show() {
    float h = random(0,360);
    strokeWeight(0);
    noStroke();
    fill (pos.x/2, pos.y/2,pos.x/2 + pos.y/2,200);
    circle(pos.x,pos.y,rad);
    h = (h + 1) % 360;
  }
  
  public void move() {
    pos.add(vel);
    if(pos.x > width-rad || pos.x < rad - 5) {
      vel.x *= -1*2;
      hp = 3;
    }
    if(pos.y > height-rad || pos.y < rad - 5) {
      vel.y *= -1*2;
      hp = 3;
    }
      hp-=0.1;
     
     if(hp <= 0)
    this.active = false;
  }
   public void collides(Enemy enemies) {
    //if laser and enemy overlap
    if (this.pos.x >= enemies.pos.x
      && this.pos.x <= enemies.pos.x + enemies.SIZE
      && this.pos.y >= enemies.pos.y
      && this.pos.y <= enemies.pos.y + enemies.SIZE) {
      //then enemy gets damaged
      enemies.hp -= 50;
      //if enemy has no health, destroy wp
      if (enemies.hp == 0)
        enemies.active = false;
      }
      //laser gets destroyed
      active = false;
     
    
  }
}
