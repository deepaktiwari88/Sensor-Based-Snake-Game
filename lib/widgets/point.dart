class Point {
  double x;
  double y;

  Point(double x, double y) {
    this.x = x;
    this.y = y;
  }

   bool checkInList(int index, var list) {

    if(list.length == 0)
      return false;

    var headOfSnake = this;
    for (int i = index; i < list.length; i++) {
      if (headOfSnake.x == list[i].x && headOfSnake.y == list[i].y) {
        return true;
      }
    }
    return false;
  }
}
