/**
La Voie du Code : Mouvement
@see https://github.com/StanLepunK/La-Voie-du-Code
2019_1_29
*/
Heros heros;
void setup() {
  size(500,500);
  float x = random(width);
  float y = random(height);
  heros = new Heros(x,y);
  heros.set_direction(random(-PI,PI));
  heros.set_vitesse(2.5);
}

void draw() {
  background(0); 
  stroke(255);
  strokeWeight(5);
  heros.update();

  point(heros.get_position().x,heros.get_position().y);
  

  // suivre
  PVector mouse = new PVector(mouseX,mouseY);
  float angle = angle(mouse,heros.get_position());
  heros.set_direction(angle +PI);


  // change direction aux limites de la fenêtre
  float direction = heros.get_direction();
  if(heros.get_position().x >= width || heros.get_position().x <= 0) {
    direction = PI - direction;
    heros.set_direction(direction);
  }
  
  if(heros.get_position().y >= height || heros.get_position().y <= 0) {
    direction = -direction;
    heros.set_direction(direction);
  }
}


float angle(PVector a, PVector b) {
  return atan2(b.y -a.y, b.x -a.x);
}
