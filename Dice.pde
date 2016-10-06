Die qin;
int dimX = 1000, dimY = 550, sizeDie = 40, sizeInc = 5, sizeDot = 3, sizeKey = 100, total = 0, countX = 0, countY = 0, re, gr, bl;
void setup(){
  size(dimX,dimY);
  background(0);
  noLoop();
  textAlign(CENTER);
}
void draw(){

  for(int i = 5; i <= (dimX - sizeDie - 10); i += (sizeDie + sizeInc)){
    for(int j = sizeKey; j <= (dimY - sizeDie - 10); j += (sizeDie + sizeInc)){
      qin = new Die(i, j);
      qin.roll();
      qin.show();
    }
    countX++;
  }
  for(int j = sizeKey; j <= (dimY - sizeDie - 10); j += (sizeDie + sizeInc)){
    countY++;
  }
  
}
class Die{
   int num;
   int cornerX;
   int cornerY;
   Die(int x, int y)
    {
       cornerX = x;
       cornerY = y;
    }
    void roll(){
      num = (int)(Math.random() * 6 + 1);
      total += num;
    }
    void show(){
      fill(255);
      rect(cornerX, cornerY, sizeDie, sizeDie);
      re = (int)(155*Math.random());
      gr = (int)(155*Math.random());
      bl = (int)(155*Math.random());
      stroke(re, gr, bl);
      fill(re, gr, bl);
      if(num == 1){
        ellipse((int)(sizeDie/2) + cornerX, (int)(sizeDie/2) + cornerY, sizeDot, sizeDot);
      }
      if(num == 2){
        ellipse((int)(sizeDie/3) + cornerX, (int)(sizeDie/3) + cornerY, sizeDot, sizeDot);
        ellipse((int)(2*sizeDie/3) + cornerX, (int)(2*sizeDie/3) + cornerY, sizeDot, sizeDot);
      }
      if(num == 3){
        ellipse((int)(sizeDie/4) + cornerX, (int)(3*sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(2*sizeDie/4) + cornerX, (int)(2*sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(3*sizeDie/4) + cornerX, (int)(sizeDie/4) + cornerY, sizeDot, sizeDot);
      }
      if(num == 4){
        ellipse((int)(sizeDie/3) + cornerX, (int)(sizeDie/3) + cornerY, sizeDot, sizeDot);
        ellipse((int)(sizeDie/3) + cornerX, (int)(2*sizeDie/3) + cornerY, sizeDot, sizeDot);
        ellipse((int)(2*sizeDie/3) + cornerX, (int)(sizeDie/3) + cornerY, sizeDot, sizeDot);
        ellipse((int)(2*sizeDie/3) + cornerX, (int)(2*sizeDie/3) + cornerY, sizeDot, sizeDot);  
    }
      if(num == 5){
        ellipse((int)(sizeDie/5) + cornerX, (int)(sizeDie/5) + cornerY, sizeDot, sizeDot);
        ellipse((int)(sizeDie/5) + cornerX, (int)(4*sizeDie/5) + cornerY, sizeDot, sizeDot);
        ellipse((int)(4*sizeDie/5) + cornerX, (int)(sizeDie/5) + cornerY, sizeDot, sizeDot);
        ellipse((int)(4*sizeDie/5) + cornerX, (int)(4*sizeDie/5) + cornerY, sizeDot, sizeDot); 
        ellipse((int)(2.5*sizeDie/5) + cornerX, (int)(2.5*sizeDie/5) + cornerY, sizeDot, sizeDot);
      }
      if(num == 6){
        ellipse((int)(sizeDie/4) + cornerX, (int)(sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(sizeDie/4) + cornerX, (int)(2*sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(sizeDie/4) + cornerX, (int)(3*sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(3*sizeDie/4) + cornerX, (int)(sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(3*sizeDie/4) + cornerX, (int)(2*sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(3*sizeDie/4) + cornerX, (int)(3*sizeDie/4) + cornerY, sizeDot, sizeDot);
      }
      fill(0);
      rect(0,0,dimX,sizeKey);
      fill(255);
      textSize(32);
      text("Total: " + total, (int)(dimX/2), (int)(sizeKey/4));
    }
}

void keyPressed(){
  mousePressed();
}
void mousePressed(){
  redraw();
}
