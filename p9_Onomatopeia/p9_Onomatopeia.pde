PFont myfont;
String mytext="tèc";

void setup(){
  myfont= createFont("IBMPlexMono-Medium.ttf",48);
  size (595, 879);
}

void draw(){
  background(255);
  fill(0);
  textFont(myfont);
  text(mytext, 300, 100); //3. DEFINIR CON NÚMEROS - GUARDAR SKETCH
  
  
  //4. void x(width/2,height/2)
}

//4. void x (float posx, float posy)
  //4. push, translate (posx, posy), pop
  
 //5. -- Observar progresión de x y y y hacerlo función
 //5. for (float px="50", px<200 (límite de ancho); px=px+"50"){}
 //5. for (float py=50; py>0; py=py-5){}
   //5. text (mytext, px, py)
