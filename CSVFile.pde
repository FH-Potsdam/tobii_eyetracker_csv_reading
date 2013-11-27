/**
 * Pretty nice CSVFile class needs more comments
 */
class CSVFile extends File {

  public ArrayList <Table> tables;
  public ArrayList <String> headers;
  public ArrayList <Column> columns;
  public ArrayList <Row> rows;
  public ArrayList <Cell> cells;
  private boolean hasrowheader = false;
  public boolean hascolumnheader = false;
  private int columncount = 0;
  private int rowcount = 0;

  //--------------------------------------
  //  CONSTRUCTOR
  //--------------------------------------

  public CSVFile(String _path, String _delimiter, boolean _hascolumnheader){
    super(_path, _delimiter);
    tables = new ArrayList<Table>();
    // this.hascolumnheader = _hascolumnheader;
    // if(this.hascolumnheader){
    // this.headers = new ArrayList<String>();
    //   get_headers();
    // }
    // this.cells = new ArrayList<Cell>();
    // this.columns = new ArrayList<Column>();
    // this.rows = new ArrayList<Row>();
    init();
  }
  /**
   * Print all that stuff
   */
  // public void printHeaders(){
  //   if(this.hascolumnheader){
  //     for(int i = 0; i < this.columns.size();i++){
  //       println("Column: " + i + " --> " + this.columns.get(i).head);
  //     }
  //   }else{
  //     println("This CSVFile has no headers");
  //   }
  // }

  // private String fix_decimal_delimiter(String str){
  //   return str.replaceAll(",",".");
  // }


private void init(){
  tables.add(new Table(super.lines(), super.delimiter, this.hascolumnheader, this.hasrowheader));

}
// private void init_cells(){
//     String [] lines = super.lines();
//     this.rowcount = lines.length;
//     for(int j = 0; j < lines.length;j++){
//       String [] vals = split(lines[j], super.delimiter);
//       this.columncount  = vals.length;
//         int ndx = 0;
//       for(int r = 0; r < vals.length;r++){
//         this.cells.add(new Cell(ndx,fix_decimal_delimiter(vals[r])));
//         ndx++;
//       }
//     }
// }

// private void init_columns(){
//   for(int i = 0; i < this.columncount;i++){
//     this.columns.add(new Column("",true));
//   }
//     Column currColumn;
//   for(int c = 0; c < this.cells.size();c++){
//       currColumn = this.columns.get(c%this.columncount);

//       if((c <  this.columncount) &&(this.hascolumnheader == true)){
//         currColumn.head = this.cells.get(c).getStringValue();
//       }
//       currColumn.cells.add(this.cells.get(c));
//   }
// }



//   private void init_rows() {

//   for(int i = 0; i < this.rowcount;i++){
//     this.rows.add(new Row("",false));
//   }
//     Row currRow;
//   for(int r = 0; r < this.cells.size();r++){
//       currRow = this.rows.get(r%this.rowcount);
//       // if((c <  this.rowcount) &&(this.hasheader == true)){
//       //   currRow.head = this.cells.get(c).getStringValue();
//       // }
//       currRow.cells.add(this.cells.get(r));
//   }


//   }

//   private void get_headers(){
//     String [] lines = super.lines();
//     String [] headstrings = split(lines[0], super.delimiter);
//     for(int i = 0; i < headstrings.length;i++){
//       if(headstrings[i].length() > 0){
//       headers.add(headstrings[i]);
//       }
//     }
//   }
}
