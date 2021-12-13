public class Obst {
  private PVector pos, vel;
  private final int SPEED = 2, SIZE = 100;
  
  
  public Obst(int x, int y) {
    pos = new PVector(x,y);
    vel = new PVector(0,0);
  }
  
  public void show() {
    noStroke();
    fill(0,0,0);
    square(pos.x,pos.y,SIZE);
  }
}
  
