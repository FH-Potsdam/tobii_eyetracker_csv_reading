class Column{
String head = "";
boolean hasheader = false;
ArrayList <Cell> cells;

  Column(String _head, boolean _hasheader){
    this.head = _head;
    this.hasheader = _hasheader;
    cells = new ArrayList <Cell>();
  }


void printCellValues(){
  int start = 0;
  if(this.hasheader){
    println("Column: " + this.head);
    start = 1;
      }
  for(int i = start; i < this.cells.size();i++){
    print(this.cells.get(i).getValue() + ", ");
    }
  }
}