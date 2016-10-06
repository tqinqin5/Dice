Die qin;
int dimX = 1380, dimY = 750, sizeDie = 30, sizeInc = 2, sizeDot = 6, sizeKey = 100, total = 0, countDie = 0, re, gr, bl, countOne = 0, countTwo = 0, countThree = 0, countFour = 0, countFive = 0, countSix = 0;
boolean pressed = false;
void setup(){
  size(dimX,dimY);
  background(0);
  noLoop();
}
void draw(){

  for(int i = 5; i <= (dimX - sizeDie - 10); i += (sizeDie + sizeInc)){
    for(int j = sizeKey; j <= (dimY - sizeDie - 10); j += (sizeDie + sizeInc)){
      qin = new Die(i, j);
      qin.roll();
      qin.show();
      countDie++;
    }
  }
  total = 0;
  textAlign(LEFT);
  fill(255);
  textSize(10);
  text("1: " + countOne, 5, (int)(sizeKey/7));
  text("2: " + countTwo, 5, (int)(2*sizeKey/7));
  text("3: " + countThree, 5, (int)(3*sizeKey/7));
  text("4: " + countFour, 5, (int)(4*sizeKey/7));
  text("5: " + countFive, 5, (int)(5*sizeKey/7));
  text("6: " + countSix, 5, (int)(6*sizeKey/7));
  textSize(18);
  fill(re, gr, bl);
  text("Number of die: " + countDie, 200, (int)(sizeKey/2));
  countOne = 0; countTwo = 0; countThree = 0; countFour = 0; countFive = 0; countSix = 0; countDie = 0;
  
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
      fill(0);
      rect(cornerX, cornerY, sizeDie, sizeDie);
      fill(255);
      if(pressed == true){
        noStroke();
      }
      if(pressed == false){
        stroke(re, gr, bl);
      }
      re = (int)(100+155*Math.random());
      gr = (int)(100+155*Math.random());
      bl = (int)(100+155*Math.random());
      fill(re, gr, bl);
      if(num == 1){
        ellipse((int)(sizeDie/2) + cornerX, (int)(sizeDie/2) + cornerY, sizeDot, sizeDot);
        countOne++;
      }
      if(num == 2){
        ellipse((int)(sizeDie/3) + cornerX, (int)(sizeDie/3) + cornerY, sizeDot, sizeDot);
        ellipse((int)(2*sizeDie/3) + cornerX, (int)(2*sizeDie/3) + cornerY, sizeDot, sizeDot);
        countTwo++;
      }
      if(num == 3){
        ellipse((int)(sizeDie/4) + cornerX, (int)(3*sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(2*sizeDie/4) + cornerX, (int)(2*sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(3*sizeDie/4) + cornerX, (int)(sizeDie/4) + cornerY, sizeDot, sizeDot);
        countThree ++;
      }
      if(num == 4){
        ellipse((int)(sizeDie/3) + cornerX, (int)(sizeDie/3) + cornerY, sizeDot, sizeDot);
        ellipse((int)(sizeDie/3) + cornerX, (int)(2*sizeDie/3) + cornerY, sizeDot, sizeDot);
        ellipse((int)(2*sizeDie/3) + cornerX, (int)(sizeDie/3) + cornerY, sizeDot, sizeDot);
        ellipse((int)(2*sizeDie/3) + cornerX, (int)(2*sizeDie/3) + cornerY, sizeDot, sizeDot);  
        countFour++;
    }
      if(num == 5){
        ellipse((int)(sizeDie/5) + cornerX, (int)(sizeDie/5) + cornerY, sizeDot, sizeDot);
        ellipse((int)(sizeDie/5) + cornerX, (int)(4*sizeDie/5) + cornerY, sizeDot, sizeDot);
        ellipse((int)(4*sizeDie/5) + cornerX, (int)(sizeDie/5) + cornerY, sizeDot, sizeDot);
        ellipse((int)(4*sizeDie/5) + cornerX, (int)(4*sizeDie/5) + cornerY, sizeDot, sizeDot); 
        ellipse((int)(2.5*sizeDie/5) + cornerX, (int)(2.5*sizeDie/5) + cornerY, sizeDot, sizeDot);
        countFive++;
      }
      if(num == 6){
        ellipse((int)(sizeDie/4) + cornerX, (int)(sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(sizeDie/4) + cornerX, (int)(2*sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(sizeDie/4) + cornerX, (int)(3*sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(3*sizeDie/4) + cornerX, (int)(sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(3*sizeDie/4) + cornerX, (int)(2*sizeDie/4) + cornerY, sizeDot, sizeDot);
        ellipse((int)(3*sizeDie/4) + cornerX, (int)(3*sizeDie/4) + cornerY, sizeDot, sizeDot);
        countSix++;
      }
      textAlign(CENTER);
      fill(0);
      rect(0,0,dimX,sizeKey);
      fill(re, gr, bl);
      textSize(32);
      text("Total: " + total, (int)(dimX/2), (int)(sizeKey/2));
    }
}

void keyPressed(){
  mousePressed();
}
void mousePressed(){
  redraw();
  if(mouseY < sizeKey){
    if(pressed == false){
      pressed = true;
    }
    if(pressed == true){
      pressed = false;
    }
  }
}
