class Diamond {
  List<String> rows(String input) => rowsGenerator(input).toList();
  Iterable<String> rowsGenerator(String input) sync* {
    final topRows = topRowsGenerator(input);
    yield* topRows;
    final bottomRows = topRows.toList().reversed.skip(1);
    yield* bottomRows;
  }

  Iterable<String> topRowsGenerator(String input) sync* {
    final size = input.runes.first - 'A'.runes.first + 1;
    for (int rowIndex = 0; rowIndex < size; rowIndex++) {
      final row = StringBuffer();
      final space = ' ';
      int letterPose = size - 1 - rowIndex;
      for (int i = 0; i < letterPose; i++) {
        row.write(space);
      }
      row.write(String.fromCharCode('A'.runes.first + rowIndex));
      for (int i = letterPose + 1; i < size; i++) {
        row.write(space);
      }
      row.write(row.toString().split('').reversed.skip(1).join());
      yield row.toString();
    }
  }
}
