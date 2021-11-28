//draws the bars and the scatter plot and arranges the bars so that the those that are overlapping are visible
void getcolour (int a) {
  if (a == 1)
    fill(255, 20, 0);
  else
    fill(0, 130, 255);
}

void drawRectChart (int a, int b, int c, float d, int e) {
  getcolour(e);
  rect (a, b, c, d);
}

void drawCircleChart (int a, float b, int c, float d, int e) {
  getcolour(e);
  ellipse (a, b, c, d);
}

//clear the screen with orange background and the buttons
void clearScreen () {
  background(255, 140, 55);
}


//draw graph for each year for each month
void yearMonthBarData(int m, int y) { 
  FileIO bar = new FileIO ();
  Table table = bar.table;
  int i = ((y - 1990) * 12) + (m - 1);
  TableRow row = table.getRow(i);
  Date d =  new Date (row.getInt("Month"), row.getInt("Year"));
  TempData t = new TempData (d, row.getFloat("Min Temperature"), row.getFloat("Max Temperature"), row.getFloat("Snow Fall"));
  dataBar (d.month, d.year, t.max, t.min);
}

void yearMonthScatterData(int m, int y) { 
  FileIO bar = new FileIO ();
  Table table = bar.table;
  int i = ((y - 1990) * 12) + (m - 1);
  TableRow row = table.getRow(i);
  Date d =  new Date (row.getInt("Month"), row.getInt("Year"));
  TempData t = new TempData (d, row.getFloat("Min Temperature"), row.getFloat("Max Temperature"), row.getFloat("Snow Fall"));
  dataScatter (d.month, d.year, t.max, t.min);
}

//draw graph for each year
void allYearDataBar (int y) {
  FileIO bar = new FileIO ();
  Table table = bar.table;

  for (TableRow row1 : table.findRows(str(y), "Year")) {
    Date d1 =  new Date (row1.getInt("Month"), row1.getInt("Year"));
    TempData t1 = new TempData (d1, row1.getFloat("Min Temperature"), row1.getFloat("Max Temperature"), row1.getFloat("Snow Fall"));
    dataBar (d1.month, d1.year, t1.max, t1.min);
  }
}

void allYearDataScatter (int y) {
  FileIO bar = new FileIO ();
  Table table = bar.table;

  for (TableRow row1 : table.findRows(str(y), "Year")) {
    Date d1 =  new Date (row1.getInt("Month"), row1.getInt("Year"));
    TempData t1 = new TempData (d1, row1.getFloat("Min Temperature"), row1.getFloat("Max Temperature"), row1.getFloat("Snow Fall"));
    dataScatter (d1.month, d1.year, t1.max, t1.min);
  }
}

//draw graph for each month for all years
void monthBarData(int i) {
  FileIO bar = new FileIO ();
  Table table = bar.table;

  for (TableRow row1 : table.findRows(str(i), "Month")) {
    Date d1 =  new Date (row1.getInt("Month"), row1.getInt("Year"));
    TempData t1 = new TempData (d1, row1.getFloat("Min Temperature"), row1.getFloat("Max Temperature"), row1.getFloat("Snow Fall"));
    dataBar (d1.month, d1.year, t1.max, t1.min);
  }
}

void monthScatterData(int i) {
  FileIO bar = new FileIO ();
  Table table = bar.table;

  for (TableRow row1 : table.findRows(str(i), "Month")) {
    Date d1 =  new Date (row1.getInt("Month"), row1.getInt("Year"));
    TempData t1 = new TempData (d1, row1.getFloat("Min Temperature"), row1.getFloat("Max Temperature"), row1.getFloat("Snow Fall"));
    dataScatter (d1.month, d1.year, t1.max, t1.min);
  }
}

//draw default graph
void allDataBar () {
  FileIO bar = new FileIO ();
  Table table = bar.table;

  for (TableRow row1 : table.rows()) {
    Date d1 =  new Date (row1.getInt("Month"), row1.getInt("Year"));
    TempData t1 = new TempData (d1, row1.getFloat("Min Temperature"), row1.getFloat("Max Temperature"), row1.getFloat("Snow Fall"));
    dataBar (d1.month, d1.year, t1.max, t1.min);
  }
}

void allDataScatter () {
  FileIO bar = new FileIO ();
  Table table = bar.table;

  for (TableRow row1 : table.rows()) {
    Date d1 =  new Date (row1.getInt("Month"), row1.getInt("Year"));
    TempData t1 = new TempData (d1, row1.getFloat("Min Temperature"), row1.getFloat("Max Temperature"), row1.getFloat("Snow Fall"));
    dataScatter (d1.month, d1.year, t1.max, t1.min);
  }
}

//draw max, min and default graph
void dataBar (int m, int y, float mx, float mn) {
  if (MAXTEMPERATURE==true) {
    drawRectChart (((m - 1) * 10/3 + 55) + (y - 1990) * 40, 400, 10/3, mx * -10, 1);
  } else if (MINTEMPERATURE==true) {
    drawRectChart (((m - 1) * 10/3 + 55) + (y - 1990) * 40, 400, 10/3, mn * -10, 0);
  }

  if ((MAXTEMPERATURE == false && MINTEMPERATURE == false) || (MAXTEMPERATURE == true && MINTEMPERATURE == true)) {
    if (abs(mx) > abs(mn)) {
      drawRectChart (((m - 1) * 10/3 + 55) + (y - 1990) * 40, 400, 10/3, mx * -10, 1);
      drawRectChart (((m - 1) * 10/3 + 55) + (y - 1990) * 40, 400, 10/3, mn * -10, 0);
    } else {
      drawRectChart (((m - 1) * 10/3 + 55) + (y - 1990) * 40, 400, 10/3, mn * -10, 0);
      drawRectChart (((m - 1) * 10/3 + 55) + (y - 1990) * 40, 400, 10/3, mx * -10, 1);
    }
  }
}

void dataScatter (int m, int y, float mx, float mn) {
  if (MAXTEMPERATURE==true) {
    drawCircleChart (((m - 1) * 10/3) + 57 + (y - 1990) * 40, 400 - (mx * 10), 10/3, 10/3, 1);
  } else if (MINTEMPERATURE==true) {
    drawCircleChart (((m - 1) * 10/3) + 57 + (y - 1990) * 40, 400 - (mn * 10), 10/3, 10/3, 0);
  }
  if ((MAXTEMPERATURE == false && MINTEMPERATURE == false) || (MAXTEMPERATURE == true && MINTEMPERATURE == true)) {
    drawCircleChart (((m - 1) * 10/3) + 57 + (y - 1990) * 40, 400 - (mx * 10), 10/3, 10/3, 1);     
    drawCircleChart (((m - 1) * 10/3) + 57 + (y - 1990) * 40, 400 - (mn * 10), 10/3, 10/3, 0);
  }
}

//draws the graph for each month selected for a specific year or draws the whole year if no month toggles are selected
void yearBarData (int y) {
  if (JANUARY == true) 
    yearMonthBarData (1, y);

  if (FEBRUARY == true) 
    yearMonthBarData (2, y);

  if (MARCH == true) 
    yearMonthBarData (3, y);

  if (APRIL == true) 
    yearMonthBarData (4, y);

  if (MAY == true)
    yearMonthBarData (5, y);

  if (JUNE == true) 
    yearMonthBarData (6, y);

  if (JULY == true) 
    yearMonthBarData (7, y);

  if (AUGUST == true) 
    yearMonthBarData (8, y);

  if (SEPTEMBER == true) 
    yearMonthBarData (9, y);

  if (OCTOBER == true) 
    yearMonthBarData (10, y);

  if (NOVEMBER == true) 
    yearMonthBarData (11, y);

  if (DECEMBER == true)
    yearMonthBarData (12, y);

  if (JANUARY == false && FEBRUARY == false && MARCH == false && APRIL == false && MAY == false && JUNE == false && 
    JULY == false && AUGUST == false && SEPTEMBER == false && OCTOBER == false && NOVEMBER == false && DECEMBER == false)
    allYearDataBar(y);
}

void yearScatterData (int y) {
  if (JANUARY == true) 
    yearMonthScatterData (1, y);

  if (FEBRUARY == true) 
    yearMonthScatterData (2, y);

  if (MARCH == true) 
    yearMonthScatterData (3, y);

  if (APRIL == true) 
    yearMonthScatterData (4, y);

  if (MAY == true)
    yearMonthScatterData (5, y);

  if (JUNE == true) 
    yearMonthScatterData (6, y);

  if (JULY == true) 
    yearMonthScatterData (7, y);

  if (AUGUST == true) 
    yearMonthScatterData (8, y);

  if (SEPTEMBER == true) 
    yearMonthScatterData (9, y);

  if (OCTOBER == true) 
    yearMonthScatterData (10, y);

  if (NOVEMBER == true) 
    yearMonthScatterData (11, y);

  if (DECEMBER == true)
    yearMonthScatterData (12, y);

  if (JANUARY == false && FEBRUARY == false && MARCH == false && APRIL == false && MAY == false && JUNE == false && 
    JULY == false && AUGUST == false && SEPTEMBER == false && OCTOBER == false && NOVEMBER == false && DECEMBER == false)
    allYearDataScatter(y);
}

// gives the total amount of snowfall for a specific year
float pieChartYear (int y) {
  FileIO bar = new FileIO ();
  Table table = bar.table;
  float snow = 0;

  for (TableRow row : table.findRows(str(y), "Year")) {
    Date d =  new Date (row.getInt("Month"), row.getInt("Year"));
    TempData t = new TempData (d, row.getFloat("Min Temperature"), row.getFloat("Max Temperature"), row.getFloat("Snow Fall"));
    snow = snow + t.snowfall; //2 pi
  }
  return snow;
}

//gives the snowfall for a specific month of a specific year
float yearMonthSnowData(int m, int y) { 
  FileIO bar = new FileIO ();
  Table table = bar.table;

  int i = ((y - 1990) * 12) + (m - 1);
  float snowMonth = 0;
  TableRow row = table.getRow(i);
  Date d =  new Date (row.getInt("Month"), row.getInt("Year"));
  TempData t = new TempData (d, row.getFloat("Min Temperature"), row.getFloat("Max Temperature"), row.getFloat("Snow Fall"));
  snowMonth = t.snowfall;
  return snowMonth;
}

//draws specific month for a specifc year for the pie chart
void drawMonthPie (int m, int y) {
  float calc = angleMonth (m, y);
  float lastAngle = (-PI)/2;

  if (m == 1) 
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);

  lastAngle += angleMonth(1, y);
  if (m == 2) 
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);

  lastAngle += angleMonth (2, y); 
  if (m == 3) 
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);

  lastAngle += angleMonth (3, y); 
  if (m == 4) 
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);

  lastAngle += angleMonth (4, y); 
  if (m == 5) 
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);

  lastAngle += angleMonth (5, y); 
  if (m == 6) 
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);

  lastAngle += angleMonth (6, y); 
  if (m == 7) 
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);

  lastAngle += angleMonth (7, y); 
  if (m == 8)
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);

  lastAngle += angleMonth (8, y); 
  if (m == 9) 
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);

  lastAngle += angleMonth (9, y); 
  if (m == 10) 
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);

  lastAngle += angleMonth (10, y); 
  if (m == 11)
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);

  lastAngle += angleMonth (11, y); 
  if (m == 12) 
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);
}

//gives the angle of a pie slice (month) for a specific year
float angleMonth (int m, int y) {
  return (yearMonthSnowData(m, y)/pieChartYear (y)) * (2 * PI);
}

//draws the whole pie for a specific year
void drawYearPie (int y) {
  FileIO bar = new FileIO ();
  Table table = bar.table;
  float lastAngle = (-PI)/2;

  for (TableRow row : table.findRows(str(y), "Year")) {
    Date d =  new Date (row.getInt("Month"), row.getInt("Year"));
    float calc = angleMonth (d.month, y);
    float colourRed = map(d.month, 1, 7, 70, 255);
    float colourBlue = map(d.month, 1, 7, 10, 90);
    float colourGreen = map(d.month, 1, 15, 0, 150);
    fill(colourRed, colourBlue, colourGreen);
    arc(650, 330, 400, 400, lastAngle, lastAngle + calc, PIE);
    lastAngle += calc;
  }
}

//if a month is selected draws the pie slice for that month or if none of the months are selected draws the whole pie
void yearPieData (int y) {
  if (JANUARY == true) {
    fill (#5D1409);
    drawMonthPie (1, y);
  }

  if (FEBRUARY == true) {
    fill (#71180E);
    drawMonthPie (2, y);
  }

  if (MARCH == true) {
    fill (#741E12);
    drawMonthPie (3, y);
  }

  if (APRIL == true) {
    fill (#8B281B);
    drawMonthPie (4, y);
  }

  if (MAY == true) {
    fill (#A23224);
    drawMonthPie (5, y);
  }

  if (JUNE == true) {
    fill (#B93C2D);
    drawMonthPie (6, y);
  }

  if (JULY == true) {
    fill (#D03C36);
    drawMonthPie (7, y);
  }

  if (AUGUST == true) {
    fill (#E7463F);
    drawMonthPie (8, y);
  }

  if (SEPTEMBER == true) {
    fill (#FE5048);
    drawMonthPie (9, y);
  }

  if (OCTOBER == true) {
    fill (#FA766F);
    drawMonthPie (10, y);
  }

  if (NOVEMBER == true) {
    fill (#F79691);
    drawMonthPie (11, y);
  }

  if (DECEMBER == true) {
    fill (#F5BCB9);
    drawMonthPie (12, y);
  }

  if (JANUARY == false && FEBRUARY == false && MARCH == false && APRIL == false && MAY == false && JUNE == false && 
    JULY == false && AUGUST == false && SEPTEMBER == false && OCTOBER == false && NOVEMBER == false && DECEMBER == false)
    drawYearPie (y);
}
