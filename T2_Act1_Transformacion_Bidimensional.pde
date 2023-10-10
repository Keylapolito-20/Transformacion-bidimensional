float angulo = 0;
float intensidad = 0;
boolean aumentar = true;
float posX = 50; // Posición inicial en X
boolean moveRight = false; // Variable para controlar el movimiento
float scaleFactor = 1.5; // Factor de escala inicial
float skewAmountX = 0;
float skewAmountY = 0;

void setup(){
  size(400, 400);
}

void draw(){
  float rojo = random(0, 255);
  float verde = random(0, 255);
  float azul = random(0, 255);
  background(intensidad, 0, 255);
  stroke(intensidad, 0,0);
  fill(rojo, verde, azul);
  translate(200, 200);
  rotate(angulo);
  rect(-50, -50, 100 , 100);
  angulo += 0.01;
  
   // Realiza la translación si moveRight es verdadero
  if (moveRight) {
  posX += 1; // Puedes ajustar la velocidad del movimiento aquí
  }
  scale(scaleFactor); // Aplica el escalonamiento
  if (intensidad == 255){
    aumentar = false;
  }else if (intensidad == 0 ){
    aumentar = true;
  }
  
  if (aumentar ){
      intensidad += 1;
  }else {
    intensidad -= 1;
  }
}

void keyPressed()   {
  
  if (key == '1'){
      angulo += 0.01;
  }
  if (key == '2') {
    scaleFactor += 0.1; // Puedes ajustar la cantidad de escalonamiento aquí
  }

}
void keyReleased() {
   if (key == '3') {
    angulo += radians(20); // Incrementa el ángulo de rotación en 10 grados cuando se presiona "3"
  }
   if (key == '4') {
    skewAmountX += 0.1; // Incrementa el sesgo en el eje X cuando se presiona "4"
    skewAmountY += 0.1; // Incrementa el sesgo en el eje Y cuando se presiona "4"
  }
  // Si se suelta la tecla "2", detiene el escalonamiento
  if (key == '2') {
    // Puedes restablecer el factor de escala a 1.0 o a otro valor inicial si lo deseas.
  }
}
