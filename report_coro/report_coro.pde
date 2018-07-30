import processing.opengl.*;
int bexist = 0;
int qseq;
int px = 200;
int py = 400;
int pw = 300;
int ph = 50;

int bx = 100;
int by = 250;
int bw = 40;
int bh = 40;
int sx = 2;
int sy = 2;
int ew = 20;
int eh = 20;

int w = 78;
int h = 30;
int i;
int hit = 0;

int[] f = new int[30];

PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
//float xmag, ymag = 0;
//float newXmag, newYmag = 0; 
 
float my_timer;
//float start_timer = 0.0;

void setup(){
  size(400,500,P3D);
  noStroke();
  img = loadImage("karada.jpg");
  img2 = loadImage("tail.jpg");
  img3 = loadImage("leg.jpg");
  img4 = loadImage("sougen.jpg");
  img5 = loadImage("kao.jpg");
  body = createShape(BOX,1);
  body.setTexture(img);
  body.setStrokeWeight(0);
  leg = createShape(BOX,1);
  leg.setTexture(img3);
  leg.setStrokeWeight(0);
  tail = createShape(BOX,1);
  tail.setTexture(img2);
  tail.setStrokeWeight(0);
  kao = createShape(SPHERE,1);
  kao.setTexture(img);
  kao.setStrokeWeight(0);
  textureMode(IMAGE);
  PFont font = createFont("MS Gothic",48,true);
  textFont(font);// 選択したフォントを使用する
  textSize(70);  // フォントの表示サイズ
  fill(255,0,0);// フォントの色　赤
  gameInit();
}

void gameInit(){
  qseq = 0;
  hit = 0;
  bx = 100;
  by = 250;
  sx = 2;
  sy = 2;
  for(int i = 0;i<30;i++){
    f[i] = 1;
  }
  bexist = 0;
}

void gameTitle(){
  qseq = 1;
}

void gamePlay(){
  playerMove();
  pushMatrix();
  karada();
  popMatrix();
  blockDisp();
  pushMatrix();
//  rotateY(radians(frameCount)/2);
  ball();
  popMatrix();
  ballMove();
  draw_texture_quad() ;
//  ballDisp();
//  blockHit(i, x, y);
 // playerDisp();
}


//void gameOver(){
//}

/*void playerDisp(){
  fill(115, 66, 41);
  rect(px, py, pw, ph, 5);
}
*/
void playerMove(){
   px = mouseX;
   if((px) > width){
     px = width;
   }
}





void draw(){
  background(0);
//  timer = timer + 0.1;

  if(qseq == 0){
    gameTitle();
  } else if(qseq == 1){
    gamePlay(); 
  } 
 
//    gameOver();
  
//  }
  gamePlay(); 
}
  


