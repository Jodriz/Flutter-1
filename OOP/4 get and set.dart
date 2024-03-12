class Square{
  double _side;
  /**
   * Assertions throw an exception if condition is not met.
   */
  Square({required double side})
        :assert(side >= 0, "'side' value cannot be < 0"), 
        _side = side;
  double _calcArea(){
    return _side * _side;
  }
  double get area {
    return _calcArea();
  }
  set side(double num) {
    // assert(num < 0, "'side' value cannot be < 0");
    if(num < 0) throw "'side' value cannot be < 0";
    _side = num; 
  }
  @override
  String toString() {
    return "$area";
  }
}
void main(){
  final sq = Square(side: 6);
  print(sq);
  // throw error
  // final sq2 = Square(side: -6);
  // throw error
  //sq.side = -32;
  //print(sq2);
}