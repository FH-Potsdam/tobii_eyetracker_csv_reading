class Row {
ArrayList <Cell> cells;
String head;
boolean hasheader = false;
 // Row(){
 //   cells = new ArrayList<Cell>();
 // }

  Row(String _head, boolean _hasheader){
    this.head = _head;
    cells = new ArrayList<Cell>();
    this.hasheader = _hasheader;
 }
}
