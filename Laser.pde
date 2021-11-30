public class Laser {
  private PVector pos, vel;
  private final int rad = 20;
  private color c;
  private boolean active = true;
  public float hp = 10.0;
  
  public Laser(PVector pos) {
    this.pos = pos;
    vel = new PVector(mouseX,mouseY).sub(pos).limit(15);
     c = color(HSB, height, height, height);
  }
  
  public void show() {
    float h = random(0,360);
    fill (pos.x/2, pos.y/2,mouseX/width + mouseY/2);
    square(pos.x,pos.y,rad);
    h = (h + 1) % 360;
  }
  
  public void move() {
    pos.add(vel);
    if(pos.x > width-rad || pos.x < rad - 5) {
      vel.x *= -1;
    }
    if(pos.y > height-rad || pos.y < rad - 5) {
      vel.y *= -1;
    }
      hp-=0.1;
     
     if(hp <= 0)
    this.active = false;
  }
}
