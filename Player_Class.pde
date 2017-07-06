// Player Class
// Venture CodeMakers Advanced
// PacDude

public class Player {
  private int x;
  private int y;
  private int xVel = 1;
  private int yVel = 0;
  private int s;
  private int lives;
  private int mult=2;
  private color c = color(255, 234, 48);

  Player(int xArg, int yArg, int size) {
    x = xArg;
    y = yArg;
    s = size;

    lives = 2;
  }

  public void draw() {
    for (int v=0; v<mult; v++) {
      int pac_top = y - 12 + yVel;
      int pac_bot = y + 12 + yVel;
      int pac_left = x - 12 +xVel;
      int pac_right = x + 12+xVel ;
      for (int i = 0; i < walls.length; i++) {
        if (pac_left<walls[i].x+walls[i].w && pac_right>walls[i].x       &&     pac_top<walls[i].y+walls[i].h && pac_bot>walls[i].y ) {
          xVel=0;
          yVel=0;
        }
      }
    
    x += xVel;
    y += yVel;
    }
    fill(c);
    ellipse(x, y, s, s);
  }

  // Moves the player left by n.
  public void moveLeft() {
    xVel = -1;
    yVel = 0;
  }

  // Moves the player right by n.
  public void moveRight() {
    xVel = 1;
    yVel = 0;
  }

  // Moves the player down by n.
  public void moveDown() {
    xVel = 0;
    yVel = 1;
  }

  // Moves the player up by n.
  public void moveUp() {
    xVel = 0;
    yVel = -1;
  }

  public void die() {
    lives--;
  }

  public boolean isAlive() {
    if (lives > 0) {
      return true;
    } else {
      return false;
    }
  }
}