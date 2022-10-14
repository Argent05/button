class Button {
  //instance variables for rect button
  int x, y, w, h;  // x, y is the center
  boolean clicked;
  color highlight, normal;
  String text;

  // constructor
  Button(String t, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false;
  }
  
  // Behaviour Functions
  void show() {
    rectMode(CENTER);  // this is so you can line up the text nicely
    textAlign(CENTER, CENTER);
    ifTouching();


    strokeWeight(4);
    stroke(0);
    rect(x, y, w, h, 30);

    //text label
    textAlign(CENTER, CENTER);
    ifTouchingText();
    textSize(w/4);
    text(text, x, y);

    if (mouseReleased && mouseX > x-w/2 && mouseX < x+w/2 && mouseY < y-h/2 && mouseY > y+h/2) {
      clicked = true;
    } else {
      clicked = false;
    }
  }

  void ifTouching() {
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY < y-h/2 && mouseY > y+h/2) {                     // Because rectMode(CENTER,CENTER), the x and ys are now shifted to the center of the rectangle. To counteract this, subtract the x by half of the width and y by half of height
      fill(highlight);
    } else {
      fill(normal);
    }
  }

  void ifTouchingText() {
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY < y-h/2 && mouseY > y+h/2) {                     // Because rectMode(CENTER,CENTER), the x and ys are now shifted to the center of the rectangle. To counteract this, subtract the x by half of the width and y by half of height
      fill(normal);
    } else {
      fill(highlight);
    }
  }
}
