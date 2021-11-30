public class Player {
  private PVector pos, vel;
  private final int SPEED = 5, SIZE = 30;
  
  
  public Player(int x, int y) {
    pos = new PVector(x,y);
    vel = new PVector(0,0);
  }
  
  public void show() {
    fill(0,0,0);
    circle(pos.x,pos.y,SIZE);
  }
  
  public void move() {
    if (canMove())
    pos.add(vel);
    }
    
  public boolean canMove() {
    boolean canMove;
    PVector newPos = PVector.add(pos, vel);
    if (newPos.x + SIZE > width || newPos.x < SIZE + 5 || newPos.y + SIZE > height || newPos.y < SIZE + 5) {
      canMove = false;
    }
    else {
      canMove = true;
    }
    return canMove;
  }
  }
