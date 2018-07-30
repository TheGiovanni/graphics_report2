void draw_texture_quad() 
{
  pushMatrix();
  fill(255, 255);
  //rotateY(map(mouseX, 0, width, -PI, PI));
  //rotateZ(PI/6);
  beginShape();
  texture(img4);
  vertex(400, -500, -1, 0.0, 0.0);
  vertex(400, -500, -1, img4.width, 0);
  vertex(400, 500, -1, img4.width, img4.height);
  vertex(-400, 500, -1, 0, img4.height);
  endShape();
  popMatrix();
}
