/**
 * This is for processing multiple files
 * unused at the moment
 */
class CSVReader{

  ArrayList<CSVFile> files;
  CSVReader(ArrayList <CSVFile> infiles){
  this.files = infiles;
  }

void read_files(){
  for(int i = 0; i < this.files.size();i++){
    // println(files.get(i).columns);
    for(int j = 0; j < files.get(i).columns.size();j++){

//      if(files.get(i).hasheader == true){
//        println("Colums head: "+ files.get(i).columns.get(j).head);
//      }
      println("Colums cells: "+ files.get(i).columns.get(j).cells);
    }
    // for(int r = 0; r < files.get(i).rows.size();r++){
    //   println("Rows Cells: " + files.get(i).rows.get(r).cells);
    // }
  }
}

  // void read(){

  // String lines[] = loadStrings(files.get(0).path);
  // println("there are " + lines.length + " lines");
  //   for (int i = 0 ; i < lines.length; i++) {
  //     println(lines[i]);
  //   }


  // }


}// end of class CSVReader
