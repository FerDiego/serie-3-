float ballX;          // Posición x de la pelota
float ballY;          // Posición y de la pelota
float ballSpeedX;     // Velocidad en la dirección x
float ballSpeedY;     // Velocidad en la dirección y
float ballDiameter = 50;  // Diámetro de la pelota
color ballColor;      // Color de la pelota

void setup() {
  size(400, 400);  // Tamaño de la ventana
  resetBall();     // Inicializar la posición y velocidad de la pelota
  ballColor = color(random(255), random(255), random(255));  // Color aleatorio para la pelota
}

void draw() {
  background(0);  // Fondo negro
  
  // Mover la pelota
  ballX += ballSpeedX;
  ballY += ballSpeedY;
  
  // Rebotar en los bordes
  if (ballX < 0 || ballX > width) {
    ballSpeedX *= -1;
    ballColor = color(random(255), random(255), random(255));  // Cambiar color en cada rebote
  }
  if (ballY < 0 || ballY > height) {
    ballSpeedY *= -1;
    ballColor = color(random(255), random(255), random(255));  // Cambiar color en cada rebote
  }
  
  // Dibujar la pelota
  fill(ballColor);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
}

void resetBall() {
  ballX = random(ballDiameter / 2, width - ballDiameter / 2);  // Posición inicial x aleatoria
  ballY = random(ballDiameter / 2, height - ballDiameter / 2);  // Posición inicial y aleatoria
  ballSpeedX = random(1, 3);  // Velocidad x aleatoria
  ballSpeedY = random(1, 3);  // Velocidad y aleatoria
}

void mousePressed() {
  resetBall();  // Reiniciar la posición y velocidad de la pelota al hacer clic
}
