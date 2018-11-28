/**
La Voie du Code vers les Étoiles
@see https://github.com/StanLepunK/La-Voie-du-Code
2018_11_27
*/

void setup() {
  size(600,400);
}


void draw() {
  background(255);
  //turn_around();
  few_points();
  
}

int num = 10;
PVector [] pos = new PVector[num];
void few_points() {
  float angle = TAU / num;
  int diam = 50;
  PVector offset = new PVector();
  offset.x = width/2;
  offset.y = height/2;
  
  // position
  float ratio = .38;
  float start_angle = map(mouseX,0,width,0,TAU);
  for(int i = 0 ; i < num ; i++) {
    if(pos[i] == null) pos[i] = new PVector();
    float final_angle = (angle*i)+start_angle;
    float cos_x = cos(final_angle);
    float sin_y = sin(final_angle);
    float temp_diam = diam;
    if(i%2 == 0) temp_diam = diam *ratio;
    pos[i].x = (temp_diam * cos_x);
    pos[i].y = (temp_diam * sin_y);
    
    pos[i].add(offset);
  }
  // forme
  beginShape();
  for(int i = 0 ; i < num ; i++) {
    vertex(pos[i].x,pos[i].y);
  }
  endShape(CLOSE);
}
