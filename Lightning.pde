void setup(){
 size(400, 400); 
 background(50, 50, 70);
 strokeWeight(3);
 noFill();
 frameRate(15);
 stroke(#E3D03E);
}

// Variable points for yellow lightning
int x1 = 200;
int y1 = 0;
int x2 = 0;
int y2 = 0;

// Variable points for blue lightning
int x3 = 200;
int y3 = 0;
int x4 = 0;
int y4 =  0;


void draw(){
   
  // yellow lightning + opacity
   fill(50, 50, 70, 15);
   rect(0, 0, 400, 400);
   stroke(#E3D03E);
   strokeWeight(3);

    // reset lighting
    if(y1 >= 400){
      x1 = 200;
      y1 = 0;
      x2 = 0;
      y2 = 0;
    }
    
    // loop for yellow lightning
    while(y1 < 400){
     x2 = x1 + (int)(Math.random() * 41) - 20;
     y2 = y1 + (int)(Math.random() * 9 + 1);
     line(x1, y1, x2, y2);
     x1 = x2;
     y1 = y2;
  }
  
  // blue lightning
  stroke(#71D3ED);
  strokeWeight(6);
  while(y3 < 400){
     x4 = x3 + (int)(Math.random() * 21) - 10;
     y4 = y3 + (int)(Math.random() * 9 + 1);
     line(x3, y3, x4, y4);
     x3 = x4;
     y3 = y4;
  }
}


void mousePressed(){
  // if mouse pressed, show blue lightning
 x3 = 200;
 y3 = 0;
 x4 = 0;
 y4 = 0;
}
