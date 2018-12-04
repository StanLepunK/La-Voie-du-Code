
PVector [] pts ;
void setup() {
  size(400,400);
  int num = 20;
  int cell_size = width/num;
  int offset_x = cell_size/2;
  int offset_y = cell_size/2;
  pts = new PVector[num*num];
  int rank = 0;
  for(int x = 0 ; x < num ; x++) {
    for(int y = 0 ; y < num ; y++) {
      int temp_x = x * cell_size +offset_x;
      int temp_y = y * cell_size +offset_y;
      pts[rank] = new PVector(temp_x,temp_y);
      rank++;
    }
  }
}

float angle;
void draw() {
  background(255,0,0);
  int size_rect = 50;
  rectMode(CENTER);
  angle += .02;
  noStroke();
  for(int i = 0 ; i < pts.length ; i++) {
    if(i%2 ==0) {
      fill(255);
    } else {
      fill(0);
    }
    rect_motion(pts[i].x,pts[i].y,size_rect,angle);
  }
}



void rect_motion(float x,float y,int size, float angle) {
  rectMode(CENTER);
  pushMatrix();
  translate(x,y);
  rotate(angle);
  rect(0,0,size,size);
  popMatrix();
}
