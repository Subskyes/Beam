public class LSight {
  private PVector pos2, vel;
   private boolean active = true;
   
   public void show() {
     //https://processing.org/examples/vectormath.html
       // A vector that points to the mouse location
  PVector mouse = new PVector(mouseX,mouseY);
  
  // A vector that points to the center of the player
  PVector center = new PVector(player.pos.x,player.pos.y);
    // Subtract center from mouse which results in a 
  // vector that points from center to mouse
  center.sub(mouse).sub(0,0);
    
  // Multiply its length by 150 (Scaling its length)
  center.setMag(1000);
 
    fill (255,0,0);
    stroke(255,0,0,100);
    strokeWeight(4);
    line(mouse.x,mouse.y,player.pos.x,player.pos.y);
  }
  public LSight(PVector pos2) {
    this.pos2 = pos2;
  }
} 
