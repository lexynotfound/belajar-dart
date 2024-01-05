
/*
  dart closuer
 */
Function f(List<int> arr) {
  int i = 0;
  int s = 0;

  int sum() {
    if (i < arr.length) {
      s += arr[i];
      i++;
      return sum();
    } else {
      return s;
    }
  }

  return sum;
}


Function foo(List<int> x, int a, int b, int i, int j) {
  int count() {
    int k = j;
    int ct = 0;

    while (k > i - 1) {
      if (x[k] <= b && !(x[k] <= a)) {
        ct = ct + 1;
      }
      k = k - 1;
    }

    return ct;
  }

  return count;
}

void main() {
  var arr = [1, 2, 3, 4, 5];
  var sumFunction = f(arr);

  var result = sumFunction();
  print(result); // Output: 15

  var x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var a = 3;
  var b = 7;
  var i = 0;
  var j = x.length - 1;

  var countFunction = foo(x, a, b, i, j);
  var results = countFunction();

  print(results); // Output: 5
}
