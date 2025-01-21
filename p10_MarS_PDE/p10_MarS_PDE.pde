//Mar Sanchis Meliá - Composició. 

PFont myfont;
import processing.pdf.*; 
boolean record;
float theta;
color[] paleta={#ff007b, #ff3900, #008a31};

void setup() {
  frameRate(10);
  myfont= createFont("IBMPlexMono-Medium.ttf",8);
  size(568, 843);
}

void draw() {
  
  if (record){ //Empezar la operación (crea pdf)
  beginRecord(PDF,"repeticio-##.pdf");
  }
  saveFrame("png/onomatopeia-####.png");
  
  //background(255);
  //background(paleta[0]);
  
  int r= int(random(paleta.length));
  if (frameCount % 8 == 0) {
    background(paleta[r]);
  }
  
  
  fill(0);
  textFont(myfont);
  textSize(8);
  gradiation();
  //column();
  //column2();
  fila();
  //regular();
  espiga2();
  mitat();
  mitat2();
  //piramid();
    
  
  saveFrame("png/onomatopeia-####.png");
  
  if(record){ //Acabar la operación (graba y guarda pdf)
  endRecord();
  record=false; 
  }
  
}

void regular() {
  for (int y = 300; y <= height-300; y += 10) {
    for (int x = 400; x <= width-100; x += 25) {
      //text("tèc", x, y);
      //dibuix(x,y);
      //push();
      //rotate(radians(random(45)));
      //dibuix(x,y);
      //pop();
    }
  }
}

void column() {
  for (int y = 30; y <= height-400; y += 5) {
    for (int x = 90; x <= width-100; x += 40) {
      //text("b", x, y);
      dibuix(x,y);
    }
  }
}

void column2() {
  for (int y = 50; y <= height-100; y += 5) {
    for (int x = 100; x <= width-100; x += 40) {
      //text("b", x, y);
      dibuix(x,y);
    }
  }
}


void fila() {
  for (int y = 50; y <= height-400; y += 30) {
    for (int x = 80; x <= width-100; x += 30) {
      //text("b", x, y);
      dibuix(x,y);
    }
  }
}

void piramid() {
  for (int y = 70; y <= height-300; y += 25) {
    for (int x = 50; x <= y; x += 20) {
      //text("tèc", x-3, y-3);
      dibuix(x,y);
    }
  }
}

void gradiation() {
  for (float y = 400; y <= height-100; y *= 1.06) {
    for (int x = 80; x <= width-120; x += 15) {
      //text("è", x, y-2);
      dibuix(x,y);
    }
  }
}

void mitat() {
  for (int y = 200; y <= height-300; y += 15) {
    for (int x = 100; x <= width-100; x += 15) {
      if (x <= width/2) {
        //text("t", x-13, y-13);
        dibuix(x-13, y-13);
      } else {
        text("//", x-13+sin(frameCount)*random(12.8), y+13);
      }
    }
  }
}

void mitat2() {
  for (int y = 100; y <= height-700; y += 15) {
    for (int x = 100; x <= width-50; x += 15) {
      if (x <= width/2) {
        text("t", x+8+sin(frameCount)*random(10.8), y-8);
        //dibuix(x-13, y-13);
      } else {
        text("//", x-13+sin(frameCount)*random(12.8), y+13);
      }
    }
  }
}

void espiga() {
  for (int y = 20; y <= height-20; y += 25) {
    for (int x = 5; x <= width-15; x += 25) {
      if ((x % 10) == 0) {
        text("t", x+8+sin(frameCount)*random(12.8), y-8);
      } else {
        text("è", x+8+sin(frameCount)*random(12.8), y+8);
      }
    }
  }
}

void espiga2() {
  for (int y = 200; y <= height-400; y += 10) {
    for (int x = 200; x <= width-200; x += 5) {
      if ((x % 10) == 0) {
        text("t", x+7+sin(frameCount)*random(14.8), y-8);
      } else {
        text("è", x+8, y+8);
      }
    }
  }
}


void dibuix(float posx, float posy){
  theta+= 0.005;
  push();
    translate(posx+sin(frameCount)*2.8, posy+cos(frameCount)+10*2.8);
    push();
      rotate (radians(180));
      text("tèc",-10, 0);
      //text("tèc",-15, 0);
    pop();
    text("tèc", 0, 10); 
    //text("tèc", 0, 12); 
 pop();
}

void mousePressed(){ //Para activar y cambiar los estados del record.
  record=true;
}
