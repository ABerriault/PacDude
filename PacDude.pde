// Made by CodeMakers Advanced
// PacDude

Player pac = new Player(300, 300, 25);
Wall[] walls = new Wall[10];
Ghost[] ghosts = new Ghost[4];

void setup() {
  size(600, 600);
  noStroke();

  // Create Walls
  for (int i = 0; i < 5; i++) {
    walls[i] = new Wall(50*i, 50, 5, 200);
  }
  for (int i = 4; i < 10; i++) {
    walls[i] = new Wall(50, 50*i, 100, 200);
  }

  // Create Ghosts
  ghosts[0] = new Ghost(400, 400, color(50, 50, 150));
}

void draw() {
  background(0);
  // Draw PacDude
  pac.draw();
  fill(255,255,255);
  //rect-25c.x-12c.y-12,25,25);
  // Draw Walls
  for (int i = 0; i < walls.length; i++) {
    walls[i].draw();
  }

  // Draw Ghosts
  ghosts[0].draw();
} 

void keyPressed() {
  if (key == 'a') {
    // move left
    pac.moveLeft();
  } else if (key == 'd') {
    // move right
    pac.moveRight();
  } else if (key == 's') {
    // move down
    pac.moveDown();
  } else if (key == 'w') {
    // move up
    pac.moveUp();
  }
}