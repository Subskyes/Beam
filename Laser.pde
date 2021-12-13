public class Laser {
  private PVector pos, vel;
  private final int rad = 25;
  private boolean active = true;
  public float hp = 20.0;
  
  public Laser(PVector pos) {
    this.pos = pos;
    vel = new PVector(mouseX,mouseY).sub(pos).setMag(7.5);
  }
  
  public void show() {
    float h = random(0,360);
    strokeWeight(0);
    noStroke();
    fill (pos.x/2, pos.y/2,pos.x/2 + pos.y/2);
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
      hp = 5;
    }
      hp-=0.3;
     
     if(hp <= 0)
    this.active = false;
  }
   public void collides(Enemy enemies) {
    //if laser and enemy overlap
     double dist = PVector.sub(this.pos,enemies.pos).mag();
    if (dist <= this.rad / 2 + enemies.SIZE / 2)
    {
      //then enemy gets damaged
      enemies.hp -= 5;
      //if enemy has no health, destroy wp
      if (enemies.hp == 0)
        enemies.active = false;
        
        active = false;
      }
      //laser gets destroyed
     
     
    
  }
}
