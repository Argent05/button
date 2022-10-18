boolean mouseReleased;
boolean wasPressed;

color green = #36F702;
color white = #FDFFFC;
color bkg = #FDFFFC;
color black = #0F0F0F;
color pink = #FF03DE;
//Initalization
Button greenButton, blackButton, pinkButton, photoButton;

//Image
PImage photo;
void setup() {
  size(800, 800);
  
  photo = loadImage("Elmoballs2.jpg");
  
  //(String t, int _x, int _y, int _w, int _h, color norm, color high)
  greenButton = new Button("GREEN", 200, 200, 100, 40, green, white);
  blackButton = new Button("Black", 500,400,300,300, black, white);
  pinkButton = new Button("Pink",  200,500,200,200, pink, white);
  photoButton = new Button(photo,200,400,200,200,pink,white);
  
}



void draw() {
  click(); //?
  background(bkg);
  greenButton.show();
  blackButton.show();
  pinkButton.show();
  
  photoButton.show();
  if(pinkButton.clicked){
   bkg = pink; 
    
  }
  if (greenButton.clicked) {
    println("?");
    bkg = green;
  }
  if (blackButton.clicked){
   bkg = black; 
    
  }
  
  if (photoButton.clicked){
   bkg = pink; 
  }
}
