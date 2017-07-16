// Filename: PacDude
// Camp: Venture Codemakers Advanced
// Date: Summer 2017
// Camper Name: 

/************************************************************************
 *                         GLOBAL VARIABLES
 *  
 *  These are variables that are used throughout the game. They set up 
 *  things such as the player and lists for enemies and projectiles.
 *
 *
 ***********************************************************************/
Player pac = new Player(300, 300, 25);
Wall[] walls = new Wall[10];
Ghost[] ghosts = new Ghost[4];
int level = 0;


/************************************************************************
 *                         SETUP METHOD
 *  
 *   This code is run ONLY once at the very begining of the program.
 *
 *
 ***********************************************************************/
void setup() {
  size(600, 600);
  noStroke();

  walls[0] = new Wall(25, 25, 5, 550);                   // Create Walls
  walls[1] = new Wall(575, 25, 5, 550);
  walls[2] = new Wall(25, 25, 550, 5);
  walls[3] = new Wall(25, 575, 550, 5);
  walls[4] = new Wall(400, 200, 5, 100);
  walls[5] = new Wall(200, 200, 5, 100);
  walls[6] = new Wall(100, 400, 400, 5);
  walls[7] = new Wall(300, 326, 50, 50);
  walls[8] = new Wall(325, 460, 200, 80);
  walls[9] = new Wall(75, 75, 450, 75);

  ghosts[0] = new Ghost(200, 420, color(150, 50, 50));   // Create Ghosts
  ghosts[1] = new Ghost(200, 100, color(50, 150, 50));
  ghosts[2] = new Ghost(300, 500, color(50, 50, 150));
  ghosts[3] = new Ghost(400, 420, color(150, 150, 150));
}


/************************************************************************
 *                         DRAW METHOD
 *  
 *   This code is run EVERY FRAME while the programming is running.
 *
 *
 ***********************************************************************/
void draw() {
  background(0);
  if (pac.isAlive()) {
    fill(255);
    text("Lives: "+pac.getLives(), 5, 5, 150, 50 );                 // Display the number of lives
    text("Score: "+level/30, 545, 5, 150, 50 );                        // Display the score
    pac.draw();                                                     // Draw PacDude

    for (int i = 0; i < walls.length; i++) {
      walls[i].draw();                                              // Draw Walls
    }
    for (int i = 0; i < ghosts.length; i++) {
      ghosts[i].draw(pac);                                          // Draw Ghosts
    }
    level++;
  } else {
    // Display the Game Over Text & Score
    fill(240, 50, 50);
    textAlign(CENTER, CENTER);
    textSize(32);
    text("Game Over", 0, 0, 600, 600);
    text("Score: "+level/30, 0, 100, 600, 500);
  }
}


/************************************************************************
 *                         keyPressed METHOD
 *  
 *  This method is run everytime an input is recieved from the keyboard.
 *  By using if(), else if(), and else statements, you can bind commands
 *  to specific keys.
 *
 ***********************************************************************/
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