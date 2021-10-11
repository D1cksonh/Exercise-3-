// Exaggerated clock counting 

float move1 = 0;
float move2 = 0;
int lastSecond = 0;
int lastMinute = 0;
float countX;
float xspeed = 20;


void setup() {
  size(800, 600, P2D);  
  countX = width/2;
}

void draw() {
  background(175);
  
  // The acutal clock code 
  fill(255);
  stroke(0);
  strokeWeight(5);
  ellipse(width/2, 200, 200, 200);
  
  pushMatrix(); 
  translate(width/2, 200); 
  rotate(radians(move1));
  line(0, 0, 75, 0);
  popMatrix();
  
  pushMatrix();
  translate(width/2, 200);
  rotate(radians(move2)); 
  line(0, 0, 50, 0);
  popMatrix();
  
  // counter for the clock hands to move 
  noFill(); 
  noStroke();
  rect(countX,height/2,50,50);
  countX = countX + xspeed;
  
  if ( countX > width || countX < 0) {
    xspeed = xspeed * -1;
    move1 += 6;
    move2 += 2;
  }
}
