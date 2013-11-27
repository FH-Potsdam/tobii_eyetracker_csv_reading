/**
 * @author: @fabiantheblind
 *
 */


CSVFile tobiiexport;
Column gazePointX;
Column gazePointY;
Column timestamp;
int scaler = 2;
float oldx;
float oldy;
float oldtimesize = 0;

// ArrayList <CSVFile> csvfiles;
// CSVReader reader;
void setup(){

  // csvfiles = new ArrayList<CSVFile>();
  tobiiexport = new CSVFile("csvfiles/tobii-CSVExport-All-Data-noheader-nofilter.tsv", "\t", true);
  // reader = new CSVReader(csvfiles);
//  reader.read_files();

tobiiexport.printHeaders();

 timestamp = tobiiexport.columns.get(0);

 gazePointX = tobiiexport.columns.get(19);
 gazePointY = tobiiexport.columns.get(20);
// Column mediaWidth = reader.files.get(0).columns.get(29);

// timestamp.printCellValues();
size(1280 / scaler , 1024/ scaler);
   oldx = width/2;
   oldy = height/2;
noFill();
// beginShape();

// for(int i = 0; i < tobiiexport.rowcount; i++){
//   vertex(gazePointX.cells.get(i).getFloatValue() / scaler, gazePointY.cells.get(i).getFloatValue() / scaler);
//   }
// endShape();
// exit();
// frameRate(12);
background(255);
}


void draw (){
  int ndx = frameCount%tobiiexport.rowcount;
  float x = gazePointX.cells.get(ndx).getFloatValue() / scaler;
  float y = gazePointY.cells.get(ndx).getFloatValue() / scaler;
  noFill();
  float timesize = timestamp.cells.get(ndx).getFloatValue() - oldtimesize;
  println(ndx + " timesize: " + timesize);
  float w = timesize - oldtimesize;
  float h = w;
  fill(0);
  ellipse(x, y, w, h);
  noFill();
  line(x,y,oldx,oldy);
  oldx = x;
  oldy = y;
  // println();
  oldtimesize = timesize;
 if(ndx == tobiiexport.rowcount-1){
  exit();
  noLoop();

 }
}

String timestamp(){
int day = day();
int month = month();
int year = year();
int hour = hour();
int minute = minute();
int second = second();

return ( str(year) + str(month) + str(day) + str(hour) + str(minute) + str(second) );
}

void keyPressed() {
  if (key == 's' || key == 'S') {
      saveFrame("screen" + timestamp() + ".png");
      exit();
    }
}
