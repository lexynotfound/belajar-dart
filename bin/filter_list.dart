class Employee {
  String type;
  String name;
  int price;

  Employee(this.type, this.name, this.price);

  @override
  String toString() {
    return "$type $name: $price";
  }
}

void main() {
  var empls = <Employee>[
    Employee("Pen", "Snowman", 10000),
    Employee("Eraser", "Kenko", 12000),
    Employee("Pen", "Snowman", 12000),
    Employee("Ruler", "Butterfly", 5000),
    Employee("Ruler", "Snowman", 10000),
    Employee("Realme 7 Pro", "Realme", 99980),
    Employee("Aqua", "Aqua", 3980),
    Employee("Kitkat", "Kitkat", 51400),
  ];

  var filtered = empls.where((e) => e.price > 1000);
  print(filtered);
}
