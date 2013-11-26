/**
 * @author: @fabiantheblind
 *
 */



ArrayList <CSVFile> csvfiles;
CSVReader reader;
void setup(){

  csvfiles = new ArrayList<CSVFile>();
  csvfiles.add(new CSVFile("csvfiles/tobii-CSVExport-All-Data-noheader-nofilter.tsv", "\t", true));
  reader = new CSVReader(csvfiles);
//  reader.read_files();
//
for(int i = 0; i < reader.files.get(0).columns.size();i++ ){
  println(reader.files.get(0).columns.get(i).head);
}  // println(reader.files.get(0).columns.get(0).cells.size());

}


void draw (){

}


