import 'dart:core';

void stringPicker(String arg) {
  RegExp exp = new RegExp(r'\${(.*?)}');
  Iterable<Match> matches = exp.allMatches(arg);
  List<String> result = [];

  for (Match m in matches) {
    String? match = m.group(0);
    result.add(match!.substring(2, match.length - 1));
  }

  print(result);
}

void main() {
  String arg =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur sagittis risus \${PRICE}, sed finibus ante ornare a. Donec a dolor ultricies, bibendum eros in \${Ticket 09}, commodo nibh. Morbi eget dui facilisis, imperdiet quam vitae, faucibus sem.";

  stringPicker(arg);
}
