public class Player {
  private PVector pos, vel;
  private final int SPEED = 5, SIZE = 20;
  
  
  public Player(int x, int y) {
    pos = new PVector(x,y);
    vel = new PVector(0,0);
  }
  
  public void show() {
    fill(pos.x/2,pos.y/2,mouseX/width + mouseY/2);
    circle(pos.x,pos.y,SIZE);
  }
  
  public void move() {
    if (canMove())
    pos.add(vel);
    }
    
  public boolean canMove() {
    boolean canMove;
    PVector newPos = PVector.add(pos, vel);
    return true;
  }
}
