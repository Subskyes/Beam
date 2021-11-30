public class LSight {
  private PVector pos, vel;
   private boolean active = true;
   
   public void show() {
    float h = random(0,360);
    fill (255,0,0);
    line(10,1,10,100);
    h = (h + 1) % 360;
  }
  public LSight(PVector pos) {
    this.pos = pos;
    vel = new PVector(mouseX,mouseY).sub(pos);
  }
   public void move() {
    pos.add(vel);
   }
}
