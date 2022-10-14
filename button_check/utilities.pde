

void click() {
  mouseReleased = false; // every frame mouseRerleased is true, except for eveyrframe where mousePressed is true
  if (mousePressed) wasPressed = true;
  if (wasPressed && !mousePressed){
   mouseReleased = true;
   wasPressed = false;
  }
}
