
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


void draw() {
  background(255,0,0);
  strokeWeight(10);
  for(int i = 0 ; i < pts.length ; i++) {
    point(pts[i].x,pts[i].y);
  }
}
