class FileIO {
  Table table;

  FileIO () {
    table = loadTable ("CalgaryWeather.csv", "header");
  }
}
