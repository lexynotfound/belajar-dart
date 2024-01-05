import "dart:collection";
import "dart:ffi";

void main() {
  List l = [3, 4, 4, 3, 6, 3];
  print('The value of list before removing the list element ${l}');
  dynamic res = l.removeAt(3);
  dynamic ros = l.removeAt(0);
  dynamic ress = l.removeAt(1);
  print('The value of the element ${res}');
  print('The value of the element ${ros}');
  print('The value of the element ${ress}');
  print('The value of list after removing the list element ${l}');
}
