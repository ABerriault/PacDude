// Player Class
// Venture CodeMakers Advanced
// PacDude

public class Wall {
  private int x;
  private int y;
  private int w;
  private int h;
  private color c = color(26, 44, 186);

  Wall (int xArg, int yArg, int widthArg, int heightArg) {
    x = xArg;
    y = yArg;
    w = widthArg;
    h = heightArg;
  }

  public void draw() {
    fill(c);
    rect(x, y, w, h);
  }
}