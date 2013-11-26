class CSVFile extends File {

  ArrayList <String> headers;
  ArrayList <Column> columns;
  // ArrayList <Row> rows;
  ArrayList <Cell> cells;
  boolean hasheader = true;
  int columncount = 0;
  int rowcount = 0;

  CSVFile(String _path, String _delimiter, boolean _hasheader){
    super(_path, _delimiter);
    this.hasheader = _hasheader;
    if(this.hasheader){
    this.headers = new ArrayList<String>();
      get_headers();
    }
    this.cells = new ArrayList<Cell>();
    this.columns = new ArrayList<Column>();
    // this.rows = new ArrayList<Row>();
    init();

  }

  private String fix_decimal_delimiter(String str){
    return str.replaceAll(",",".");
  }


private void init(){
  init_cells(); // needs to be first
  // init_row();
  init_columns();

}
private void init_cells(){
    String [] lines = super.lines();
    this.rowcount = lines.length;
    for(int j = 0; j < lines.length;j++){
      String [] vals = split(lines[j], super.delimiter);
      this.columncount  = vals.length;
        int ndx = 0;
      for(int r = 0; r < vals.length;r++){
        this.cells.add(new Cell(ndx,fix_decimal_delimiter(vals[r])));
        ndx++;
      }
    }
}

private void init_columns(){
  for(int i = 0; i < this.columncount;i++){
    this.columns.add(new Column(""));
  }
    Column currColumn;
  for(int c = 0; c < this.cells.size();c++){
      currColumn = this.columns.get(c%this.columncount);

      if((c <  this.columncount) &&(this.hasheader == true)){
        currColumn.head = this.cells.get(c).getStringValue();
      }
      currColumn.cells.add(this.cells.get(c));
  }
}



  private void init_rows() {



  }

  private void get_headers(){
    String [] lines = super.lines();
    String [] headstrings = split(lines[0], super.delimiter);
    for(int i = 0; i < headstrings.length;i++){
      if(headstrings[i].length() > 0){
      headers.add(headstrings[i]);
      }
    }
  }
}
