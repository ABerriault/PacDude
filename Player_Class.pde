// Player Class
// Venture CodeMakers Advanced
// PacDude

public class Player {
  private int x;
  private int y;
  private int s;
  private int lives;
  private color c = color(255, 234, 48);

  Player(int xArg, int yArg, int size) {
    x = xArg;
    y = yArg;
    s = size;
    lives = 2;
  }

  public void draw() {
    fill(c);
    ellipse(x, y, s, s);
  }

  // Moves the player left by n.
  public void moveLeft(int n) {
    x = x - n;
  }

  // Moves the player right by n.
  public void moveRight(int n) {
    x = x + n;
  }

  // Moves the player down by n.
  public void moveDown(int n) {
    y = y + n;
  }

  // Moves the player up by n.
  public void moveUp(int n) {
    y = y - n;
  }

  // set the size of the player.
  public void setSize(int size) {
    s = size;
  }

  // get the size of the player.
  public int getSize() {
    return s;
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

  boolean hitWall(Wall[] walls) {
    for (Wall w : walls) {
      if (x >= w.getX() && x+size <= ) {
      }
    }
  }
}