// Made by CodeMakers Advanced
// PacDude

Player pac = new Player(300, 300, 25);
Wall[] walls = new Wall[10];
Ghost[] ghosts = new Ghost[4];

void setup() {
  size(600, 600);
  noStroke();

  // Create Walls
  walls[0] = new Wall(25, 25, 5, 550);
  walls[1] = new Wall(575, 25, 5, 550);
  walls[2] = new Wall(25, 25, 550, 5);
  walls[3] = new Wall(25, 575, 550, 5);
  walls[4] = new Wall(400, 200, 5, 100);
  walls[5] = new Wall(200, 200, 5, 100);
  walls[6] = new Wall(100, 400, 400, 5);
  walls[7] = new Wall(300, 326, 50, 50);
  walls[8] = new Wall(325, 460, 200, 80);
  walls[9] = new Wall(75,75, 450, 75);

  // Create Ghosts
  ghosts[0] = new Ghost(400, 400, color(50, 50, 150));
}

void draw() {
  background(0);
  // Draw PacDude
  pac.draw();
  fill(255, 255, 255);
  //rect-25c.x-12c.y-12,25,25);
  // Draw Walls
  for (int i = 0; i < walls.length; i++) {
    walls[i].draw();
  }

  // Draw Ghosts
  ghosts[0].draw(pac);
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