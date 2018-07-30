
PShape body;
PShape leg;
PShape tail;

void karada(){
  fill(0,255,0);
  pushMatrix();
  translate(px,py,0);
  scale(pw,ph,50);
  shape(body);
  popMatrix();
  
  fill(0,255,0);
  pushMatrix();
  translate(px+80,480,30);
  scale(40,125,20);
  shape(leg);
  popMatrix();
  
  fill(0,255,0);
  pushMatrix();
  translate(px+20,480,10);
  scale(40,125,20);
  shape(leg);
  popMatrix();

  fill(0,255,0);
  pushMatrix();
  translate(px-40,480,30);
  scale(40,125,20);
  shape(leg);
  popMatrix();
  
  fill(0,255,0);
  pushMatrix();
  translate(px-100,480,10);
  scale(40,125,20);
  shape(leg);
  popMatrix();
  //tail
  fill(0,255,0);
  pushMatrix();
  translate(px+170,400,0);
  scale(100,30,10);
  shape(tail);
  popMatrix();
}
void body(){
  fill(152,111,24);
  pushMatrix();
  translate(px, 400, 20);
  scale(100,30,30);
  box(1);
  popMatrix();
}

void blockHit(int ii, int x, int y){
  if(!((x < bx) && (x+w > bx) && (y < by) && (y+h > by))){
    return;
  }
  f[ii] = 0;
}
void blockDisp(){
  int x, y;
  bexist = 0;
  for(int i=0;i<30;i++){
    if(f[i] == 1){
      fill((i/5)*15,100,100);
      x = (i%5) * (w+2);
      y = 50 + (i/5) * (h+2);
      blockHit(i,x,y);
      if(f[i] == 1){
        rect(x,y,w,h,2);
        bexist = 1;
//          pushMatrix();
//          translate(x,y,10);
//          scale(w,h,10);
//          box(1);
//          popMatrix();
      }
    }
  }
}

