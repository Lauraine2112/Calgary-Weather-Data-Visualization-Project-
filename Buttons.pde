void BARCHART () {
  barvalue++;
  if (barvalue == 1) {
    clearScreen ();
    BarChart barchart = new BarChart ();
    barchart.drawBarChart ();
    axis ();
    barvalue = 0;
  }
}

void SCATTERPLOT () {
  clearScreen ();
  scattervalue++;
  if (scattervalue == 1) {
    ScatterPointPlot scatterpoint = new ScatterPointPlot ();
    scatterpoint.drawScatterPointPlot ();
    axis ();
    scattervalue = 0;
  }
}

void PIECHART () {
  clearScreen ();
  pievalue++;
  if (pievalue == 1) {
    PieChart piechart = new PieChart ();
    piechart.drawPieChart ();
    pievalue = 0;
  }
}
