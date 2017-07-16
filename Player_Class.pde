// Player Class
// Venture CodeMakers Advanced
// PacDude

public class Player {
  private int x;
  private int y;
  public int xVel = 1;
  public int yVel = 0;
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
      int top = y - 12 + yVel;
      int bot = y + 12 + yVel;
      int left = x - 12 +xVel;
      int right = x + 12+xVel ;
      for (int i = 0; i < walls.length; i++) {
        if (left < (walls[i].x+walls[i].w) && right > walls[i].x && top < walls[i].y+walls[i].h && bot > walls[i].y ) {
          xVel=0;
          yVel=0;
        }
      }
      for (int i = 0; i < ghosts.length; i++) {
        if (left < (ghosts[i].x+20) && right > ghosts[i].x) {
          if (top <  (ghosts[i].y+20) && bot > ghosts[i].y) {
            die();
          }
        }
      }

      x += xVel;
      y += yVel;
    }
    fill(c);
    ellipse(x, y, s, s);
    fill(255);
    text(""+ x + ", " + y, x+s, y);
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

  // When a player collides with a ghost it takes a life away.
  public int getLives() {
    return lives;
  }

  // When a player collides with a ghost it takes a life away.
  public void die() {
    lives--;
    x = 300;
    y = 300;
  }

  // Checks to see if the player has lost all their lives.
  public boolean isAlive() {
    if (lives > 0) {
      return true;
    } else {
      return false;
    }
  }
}