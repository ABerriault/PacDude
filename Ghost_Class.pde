// Ghost Class
// Venture CodeMakers Advanced
// PacDude

public class Ghost {
  private int x;
  private int y;
  private int xVel = 1;
  private int yVel = 0;
  private int s;
  private color c;

  Ghost(int xArg, int yArg, color col) {
    x = xArg;
    y = yArg;
    c = col;
    s = 20;
  }

  public void draw(Player p) {
    // Follow the Player
    xVel = p.xVel;
    yVel = p.yVel;
    
    collision();
    x += xVel;
    y += yVel;
    
    fill(c);
    rect(x, y, s, s);
  }

  private void collision() {
  }
}