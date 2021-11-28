class ScatterPointPlot {

  void drawScatterPointPlot () {
    if (Y1990 == true)
      yearScatterData (1990);

    if (Y1995 == true)
      yearScatterData (1995);

    if (Y2000 == true)
      yearScatterData (2000);

    if (Y2005 == true)
      yearScatterData (2005);

    if (Y2010 == true)
      yearScatterData (2010);

    if (Y2015 == true)
      yearScatterData (2015);

    if (JANUARY == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false)
      monthScatterData(1);

    if (FEBRUARY == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) 
      monthScatterData(2);

    if (MARCH == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) 
      monthScatterData(3);

    if (APRIL == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false)
      monthScatterData(4);

    if (MAY == true && Y1990 == false&& Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) 
      monthScatterData(5);

    if (JUNE == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) 
      monthScatterData(6);

    if (JULY == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) 
      monthScatterData(7);

    if (AUGUST == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) 
      monthScatterData(8);

    if (SEPTEMBER == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false)
      monthScatterData(9);

    if (OCTOBER == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) 
      monthScatterData(10);

    if (NOVEMBER == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) 
      monthScatterData(11);

    if (DECEMBER == true && Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false) 
      monthScatterData(12);

    if (JANUARY == false && FEBRUARY == false && MARCH == false && APRIL == false && MAY == false && JUNE == false && 
      JULY == false && AUGUST == false && SEPTEMBER == false && OCTOBER == false && NOVEMBER == false && DECEMBER == false && 
      Y1990 == false && Y1995 == false && Y2000 == false && Y2005 == false && Y2010 == false && Y2015 == false)
      allDataScatter();
  }
}
