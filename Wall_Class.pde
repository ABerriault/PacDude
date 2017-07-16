// Player Class
// Venture CodeMakers Advanced
// PacDude

public class Wall {
  public int x;
  public int y;
  public int w;
  public int h;
  public color c = color(26, 44, 186);

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