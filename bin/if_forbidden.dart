void ifForbidden(int a, int b) {
  if (a > b) {
    print("$a is greater than $b");
  } else if (a < b) {
    print("$a is less than $b");
  } else {
    print("$a is equal to $b");
  }
}

String ifForbiddens(int c, int d) {
  return c > d
      ? "$c is greater than $d"
      : c < d
          ? "$c is less than $d"
          : "$c is equal to $d";
}

void main() {
  ifForbidden(6, 8);
  ifForbidden(-6, -9);
  ifForbidden(9, 9);
  print(ifForbiddens(9, 9));
  print(ifForbiddens(-9, 9));
}
