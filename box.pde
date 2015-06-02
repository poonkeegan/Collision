class Box{
  
  int xPos, yPos, xSize, ySize;
  
 Box(int x, int y, int w, int h){
   xPos = x;
   yPos = y;
   xSize = w;
   ySize = h;
 }
  
  
 void display(){
   rect(xPos,yPos,xSize,ySize);
 }
 
 boolean colliding(int x, int y, int w, int h){
   /*if( radius() + sqrt(sq(w/2) + sq(h/2)) >= (sqrt(sq(x-xPos) + sq(y-yPos))))
     return false;*/
  return (abs(xPos - x) * 2 <= (xSize + w)) &&
         (abs(yPos - y) * 2 <= (ySize + h));
 }

 int radius(){
   return (int)sqrt(sq(xSize/2) + sq(ySize/2));
 }
}

