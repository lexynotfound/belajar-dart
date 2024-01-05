import 'dart:io';
void diamondGenerator(){
  
  for (int i = 0; i < 6; i++) {
    var stars = '';
    for (int j = (6 - i); j > 1; j--) {
      stars += ' ';
    }
    for (int j = 0; j <= i; j++) {
      stars += '* ';
    }
    print(stars);
  }
  var n = - 1;
  for (int i = 0; i < n; i++) {
    var stars = '';
    for (int j = (n - i); j > n; j--) {
      stars += ' ';
    }
    for (int j = 0; j <= i; j++) {
      stars += '* ';
    }
    print(stars);
  }
}

void diamondGenerators(int n) {
  int i, j;

  // This is upper triangle
  for (i = 0; i < n; i++) {
    for (j = 0; j < n - i; j++) {
      print(" ");
    }
    for (j = 0; j <= 2 * i; j++) {
      print("* ");
    }
    print("\n");
  }

  // This is lower triangle
  for (i = n - 2; i >= 0; i--) {
    for (j = 0; j < n - i; j++) {
      print(" ");
    }
    for (j = 0; j <= 2 * i; j++) {
      print("* ");
    }
    print("\n");
  }
}


void main() {
  diamondGenerator();
  diamondGenerators(3);
  diamondGenerators(6);
  /* for (int i = 0; i < 7; i++) {
    var stars = '';
    for (int j = (7 - i); j > 1; j--) {
      stars += ' ';
    }
    for (int j = 0; j <= i; j++) {
      stars += '* ';
    }
    print(stars);
  } */
  
  
}
