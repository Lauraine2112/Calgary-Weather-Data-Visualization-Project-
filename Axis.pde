void drawAxis () {
  strokeWeight(2);
  line(50, 400, 1300, 400);
  line(50, 0, 50, 600);
}

void labelAxis () {
  text("0", 30, 400);
  text("5", 30, 350);
  text("10", 30, 300);
  text("15", 30, 250);
  text("20", 30, 200);
  text("25", 30, 150);
  text("-5", 20, 450);
  text("-10", 20, 500);
  text("-15", 20, 550);
  text("1991", 95, 420);
  text("1993", 175, 420);
  text("1995", 255, 420);
  text("1997", 335, 420);
  text("1999", 415, 420);
  text("2001", 495, 420);
  text("2003", 575, 420);
  text("2005", 655, 420);
  text("2007", 735, 420);
  text("2009", 815, 420);
  text("2011", 895, 420);
  text("2013", 975, 420);
  text("2015", 1055, 420);
  text("2017", 1135, 420);
  text("2019", 1215, 420);
}

void legendBarGraph () {
  fill (255, 20, 0);
  rect (1100, 20, 10, 10);
  fill (0, 130, 255);
  rect (1100, 40, 10, 10);
  fill (0); 
  text ("Maximum Temperature", 1115, 30);
  text ("Minimum Temperature", 1115, 50);
  line (1090, 10, 1260, 10);
  line (1090, 10, 1090, 60);
  line (1090, 60, 1260, 60);
  line (1260, 10, 1260, 60);
}

void axis () {
  legendBarGraph ();
  fill (255);
  drawAxis ();
  strokeWeight (1);
  labelAxis ();
}

void labelPieChart () {
  fill (255);
  text ("JANUARY", 700, 170);
  text ("FEBRUARY", 780, 280);
  text ("MARCH", 780, 400);
  text ("APRIL", 680, 500);
  text ("MAY", 570, 490);
  text ("SEPTEMBER", 430, 460);
  text ("OCTOBER", 470, 390);
  text ("NOVEMBER", 470, 280);
  text ("DECEMBER", 560, 170);
  textSize (12);
  text ("JUNE, JULY AND AUGUST HAVE AN INSIGNIFICANT AMOUNT OF SNOW.", 60, 300);
  text ("THE DATA IS TOO SMALL TO OBSERVE ON THIS CHART.", 910, 300);
  textSize (10);
}
