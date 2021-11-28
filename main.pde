import controlP5.*;
ControlP5 cp5;

int barvalue = 0;
int scattervalue = 0;
int pievalue = 0;
boolean MAXTEMPERATURE, MINTEMPERATURE, PIECHART;
boolean JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE, JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER;
boolean Y1990, Y1995, Y2000, Y2005, Y2010, Y2015;
PImage img;

void setup () {
  background(255, 140, 55);
  size(1300, 600);
  cp5 = new ControlP5(this);
  cp5.addButton("BARCHART").setPosition(100, 20).setSize(70, 50);
  cp5.addButton("SCATTERPLOT").setPosition(175, 20).setSize(70, 50);
  cp5.addButton("PIECHART").setPosition(130, 75).setSize(70, 50);
  cp5.addToggle("MAXTEMPERATURE").setValue(false).setPosition(260, 20).setSize(50, 20);
  cp5.addToggle("MINTEMPERATURE").setValue(false).setPosition(340, 20).setSize(50, 20);
  cp5.addToggle("JANUARY").setValue(false).setPosition(440, 20).setSize(50, 20);
  cp5.addToggle("FEBRUARY").setValue(false).setPosition(500, 20).setSize(50, 20);
  cp5.addToggle("MARCH").setValue(false).setPosition(560, 20).setSize(50, 20);
  cp5.addToggle("APRIL").setValue(false).setPosition(620, 20).setSize(50, 20);
  cp5.addToggle("MAY").setValue(false).setPosition(680, 20).setSize(50, 20);
  cp5.addToggle("JUNE").setValue(false).setPosition(740, 20).setSize(50, 20);
  cp5.addToggle("JULY").setValue(false).setPosition(440, 60).setSize(50, 20);
  cp5.addToggle("AUGUST").setValue(false).setPosition(500, 60).setSize(50, 20);
  cp5.addToggle("SEPTEMBER").setValue(false).setPosition(560, 60).setSize(50, 20);
  cp5.addToggle("OCTOBER").setValue(false).setPosition(620, 60).setSize(50, 20);
  cp5.addToggle("NOVEMBER").setValue(false).setPosition(680, 60).setSize(50, 20);
  cp5.addToggle("DECEMBER").setValue(false).setPosition(740, 60).setSize(50, 20);
  cp5.addToggle("Y1990").setValue(false).setPosition(820, 20).setSize(20, 20);
  cp5.addToggle("Y1995").setValue(false).setPosition(860, 20).setSize(20, 20);
  cp5.addToggle("Y2000").setValue(false).setPosition(900, 20).setSize(20, 20);
  cp5.addToggle("Y2005").setValue(false).setPosition(940, 20).setSize(20, 20);
  cp5.addToggle("Y2010").setValue(false).setPosition(980, 20).setSize(20, 20);
  cp5.addToggle("Y2015").setValue(false).setPosition(1020, 20).setSize(20, 20);
  cp5.setColorBackground(color(105, 240, 190));
  img = loadImage ("snowfall.jpg");
}

void draw () {
  strokeWeight (1);
}
