// Made by CodeMakers Advanced
// PacDude

Player pac = new Player(300, 300, 25);
Wall[] walls = new Wall[4];
walls[0] = new Wall(200, 0, 5, 500);
walls[1] = new Wall(350, 100, 5, 400);
walls[2] = new Wall(200, 250, 100, 5);
walls[3] = new Wall(200, 500, 200, 5);

void setup() {
  size(600, 600);
  noStroke();
}


void draw() {
  background(0);
  // Draw PacDude
  pac.draw();

  // Draw the map
  for (Wall wall : walls) {
    wall.draw();
  }
} 

void keyPressed() {
  if (pac.hitWall(walls)) {
    if (key == 'a') {
      // move left
      pac.moveLeft(5);
    } else if (key == 'd') {
      // move right
      pac.moveRight(5);
    } else if (key == 's') {
      // move down
      pac.moveDown(5);
    } else if (key == 'w') {
      // move up
      pac.moveUp(5);
    }
  } else if (key == 'R') {
    // reset game
  }
}