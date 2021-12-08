public class Enemy {
  private PVector pos;
  private final int   SIZE = 40, speed = 5;
  private int hp;
  public float easing = 0.0010;
  public boolean active = true;
  
  public Enemy (int x, int y) {
   hp = 1000;
    pos = new PVector (x,y);
  }
  
  public void show() {
    fill (181,126,220);
    circle(pos.x, pos.y, SIZE);
  }
  
  public void move() {
  float targetX = player.pos.x;
  float dx = targetX - pos.x;
  pos.x += dx * easing * 2;
  
  float targetY = player.pos.y;
  float dy = targetY - pos.y;
  pos.y += dy * easing * 2;
  
  //ellipse(x, y, 66, 66);
  }
}
