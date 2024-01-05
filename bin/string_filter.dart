
import "dart:collection";

void main() {
  List<String> arr = ['Price', 'Ticket 09'];
  List<String> result = LinkedHashSet<String>.from(arr).toList();
  print(result); // => ["a", "b", "c", "d"]
}
