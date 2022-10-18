class Button {
  //instance variables for rect button
  int x, y, w, h;  // x, y is the center
  boolean clicked;
  color highlight, normal;
  String text;
  PImage image;



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
  //constructor 2
  Button(PImage p, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    image = p;
    highlight = high;
    normal = norm;
    clicked = false;
    text = "";
  }


  // Behaviour Functions

  boolean touchingMouse() {  // this is a non void method which means you can plug it in as it essentially represents a value. Thnis means you must have "return" in order to give the value
    return mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;  // this function can access the previous variables that were intializied as it falls within the scope.
  }
  void show() {

    drawRect();
    //text label
    drawLabel();
    //-----
    checkForClick();
  }

  void drawRect() {
    rectMode(CENTER);  // this is so you can line up the text nicely
    textAlign(CENTER, CENTER);
    if (touchingMouse()) {                     // Because rectMode(CENTER,CENTER), the x and ys are now shifted to the center of the rectangle. To counteract this, subtract the x by half of the width and y by half of height
      fill(highlight);
    } else {
      fill(normal);
    }

    strokeWeight(4);
    stroke(0);
    rect(x, y, w, h, 30);
  }

  void drawLabel() {
    if (image == null) {
      textAlign(CENTER, CENTER);
      if (touchingMouse()) {  // stroke changes line color fill changes text color                    // Because rectMode(CENTER,CENTER), the x and ys are now shifted to the center of the rectangle. To counteract this, subtract the x by half of the width and y by half of height
        fill(normal);
      } else {
        fill(highlight);
      }
      textSize(w/4);
      text(text, x, y);
    } else {
      imageMode(CENTER);
      image(image, x, y, w*0.9 ,h*0.9);
    }
  }
  void checkForClick() {
    if (mouseReleased && touchingMouse()) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
}
