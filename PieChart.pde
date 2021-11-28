class PieChart {

  void drawPieChart () {

    if (Y1990 == true) {
      yearPieData (1990);
      labelPieChart ();
    }

    if (Y1995 == true) {
      yearPieData (1995);
      labelPieChart ();
    }

    if (Y2000 == true) {
      yearPieData (2000);
      labelPieChart ();
    }

    if (Y2005 == true) {
      yearPieData (2005);
      labelPieChart ();
    }

    if (Y2010 == true) {
      yearPieData (2010);
      labelPieChart ();
    }

    if (Y2015 == true) {
      yearPieData (2015);
      labelPieChart ();
    }
    
    if ((MAXTEMPERATURE == true || MINTEMPERATURE == true) || (MAXTEMPERATURE == true && MINTEMPERATURE == true)) {
      image (img, 0, 0);
      textSize (20);
      text ("PLEASE DO NOT USE THE MAXTEMPERATURE OR THE MINTEMPERATURE TOGGLES AS THEY ARE OF NO USE FOR THIS CHART.", 270, 300);
      textSize (10);
    }

    if ((Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true && JANUARY == true) ||
      (Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true && FEBRUARY == true) ||
      (Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true && MARCH == true) ||
      (Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true && APRIL == true) ||
      (Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true && MAY == true) ||
      (Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true && JUNE == true) ||
      (Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true && JULY == true) ||
      (Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true && AUGUST == true) ||
      (Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true && SEPTEMBER == true) ||
      (Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true && OCTOBER == true) ||
      (Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true && NOVEMBER == true) ||
      (Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true && DECEMBER == true)) {
      image (img, 0, 0);
      textSize (20);
      text ("PLEASE SELECT ONLY ONE YEAR.", 600, 300);
      textSize (10);
    }

    if ((JANUARY == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) || 
      (FEBRUARY == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) || 
      (MARCH == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) ||
      (APRIL == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) ||
      (MAY == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) ||
      (JUNE == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) ||
      (JULY == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) ||
      (AUGUST == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) ||
      (SEPTEMBER == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) ||
      (OCTOBER == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) ||
      (NOVEMBER == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) ||
      (DECEMBER == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false)) {
      image (img, 0, 0);
      textSize (20);
      text ("PLEASE SELECT A YEAR.", 600, 300);
      textSize (10);
    }

    if ((Y1990 == true && Y1995 == true && Y2000 == true && Y2005 == true && Y2010 == true && Y2015 == true) || 
      (Y1990 == true && Y1995 == true) || (Y1990 == true && Y2000 == true) || (Y1990 == true && Y2005 == true) || (Y1990 == true && Y2010 == true) || (Y1990 == true && Y2015 == true) ||
      (Y1995 == true && Y2000 == true) || (Y1995 == true && Y2005 == true) || (Y1995 == true && Y2010 == true) || (Y1995 == true && Y2015 == true) ||
      (Y2000 == true && Y2005 == true) || (Y2000 == true && Y2010 == true) || (Y2000 == true && Y2015 == true) ||
      (Y2005 == true && Y2010 == true) || (Y2005 == true && Y2015 == true) || (Y2010 == true && Y2015 == true)) 
      
      //(JANUARY == false && FEBRUARY == false && MARCH == false && APRIL == false && MAY == false && JUNE == false && 
      //JULY == false && AUGUST == false && SEPTEMBER == false && OCTOBER == false && NOVEMBER == false && DECEMBER == false)) 
      {
      image (img, 0, 0);
      textSize (20);
      text ("PLEASE SELECT ONLY ONE YEAR.", 600, 300);
      textSize (10);
    }

    if (JANUARY == false && FEBRUARY == false && MARCH == false && APRIL == false && MAY == false && JUNE == false && 
      JULY == false && AUGUST == false && SEPTEMBER == false && OCTOBER == false && NOVEMBER == false && DECEMBER == false && 
      Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false && MAXTEMPERATURE == false && MINTEMPERATURE == false) {
      image (img, 0, 0);
      textSize (20);
      text ("PLEASE SELECT ONE YEAR OR SELECT ONE YEAR AND MONTHS.", 600, 300);
      text ("DO NOT SELECT MULTIPLE YEARS OR SELECT MONTHS WITHOUT SELECTING A YEAR. ", 600, 350);
      textSize (10);
    }
  }
}
