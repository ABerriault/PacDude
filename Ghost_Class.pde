// Ghost Class
// Venture CodeMakers Advanced
// PacDude

public class Ghost {
  public int x;
  public int y;
  public int xVel = 1;
  public int yVel = 0;
  public int s;
  public color c;

  Ghost(int xArg, int yArg, color col) {
    x = xArg;
    y = yArg;
    c = col;
    s = 20;
  }

  public void draw(Player p) {
    for (int i = 0; i < walls.length; i++) {
      if (x < (walls[i].x+walls[i].w) && x+20 > walls[i].x) {
        if (y < walls[i].y+walls[i].h && y+20 > walls[i].y ) {
          collided(p);
        }
      }
    }

    x += xVel;
    y += yVel;

    fill(c);
    rect(x, y, s, s);
  }

  private void collided(Player p) {
    if (p.x > x) {
      xVel = 1;
    } else {
      xVel = -1;
    }
    if (p.y > y) {
      yVel = 1;
    } else {
      yVel = -1;
    }
  }
}