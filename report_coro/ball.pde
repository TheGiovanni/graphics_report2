
PShape kao;
void ball(){
  imageMode(CENTER);
  fill(152,111,24);
  pushMatrix();
  translate(bx,by);
  scale(bw);
  shape(kao);
  popMatrix();
  imageMode(CORNER);
    
//eye  
  fill(0, 0, 0);
  pushMatrix();
  translate(bx-30, by-10,30);
  scale(8);
  sphere(1);
  popMatrix();
  
//eye
  fill(0, 0, 0);
  pushMatrix();
  translate(bx+30, by-10,30);
  scale(8);
  sphere(1);
  popMatrix();
  
//mouse  
  fill(0, 0, 0);
  pushMatrix();
  translate(bx , by+10, 40);
  scale(5);
  sphere(1);
  popMatrix();
  
  fill(255, 0, 0);
  pushMatrix();
  translate(bx , by+23, 30);
  scale(4);
  box(2);
  popMatrix();
  
  fill(0, 0, 0);
  pushMatrix();
  translate(bx , by+23, 20);
  scale(8);
  box(2);
  popMatrix();
}




void ballMove(){
  bx += sx;
  by += sy;
  if(by > height || by < 0){
    sy = -sy;
  }
  if((bx < 0) || (bx > width)){
     sx = -sx;
  }
//  if((px < bx) && (px+pw > bx) && (py < by) && (py+ph >by)){
//    sy = -sy;
//  }
  if((hit == 0) && (px < bx) && (px+pw > bx) && (py < by) && (py+ph > by)){
    sy = -sy;
    hit = 1;
  }
  if(by < py-30){
    hit = 0;
  }
    fill(1,100,100);
   if(bexist == 0){
    text("CLEAR!",70,350);
  }
}
void ballDisp(){
    imageMode(CENTER);
    pushMatrix();
    ball();
    popMatrix();
}

