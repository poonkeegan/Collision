/*
6/1/2015
Keegan Poon
Testing collision detection
*/
int x, y, xOld, yOld, xspeed, yspeed, size;
boolean up, down, right, left;

Box ground;

void setup() {
  size(800, 600);
  frameRate(60);
  x = 0;
  y = 0;
  size = 20;
  ground = new Box(0,500,800,40);
}

void draw(){
   background(0); 
   fill(255);
   rect(x,y,size,size);
   ground.display();
   /*if(up)
     yspeed = -5;
   else if(down)
     yspeed = 5;
   else
     yspeed = 0;*/
   if(left)
     xspeed = -5;
   else if(right)
     xspeed = 5;
   else
     xspeed = 0;
   xOld = x;
   yOld = y;
   x += xspeed;
   y += yspeed;
   if(ground.colliding(x,y,size,size)){
      x = xOld;
      y = yOld;
      yspeed = 0;
   }
   yspeed += 1;
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP) {
      up = true;
    } else if (keyCode == DOWN) {
      down = true;
    } else if (keyCode == LEFT) {
      left = true;
    } else if (keyCode == RIGHT) {
      right = true;
    }
  }
}
void keyReleased() 
{
  if (key == CODED) {
    if (keyCode == UP) {
      up = false;
    } else if (keyCode == DOWN) {
      down = false;
    } else if (keyCode == LEFT) {
      left = false;
    } else if (keyCode == RIGHT) {
      right = false;
    }
  }
}
