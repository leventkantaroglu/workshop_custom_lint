import 'package:test/test.dart';

import '../bin/custom_lint.dart';

void main() {
  group('isShortTopLevelVariableNameLength', () {
    test('Length is 5', () {
      var string = 'title';
      expect(
        isShortTopLevelVariableNameLength(string),
        equals(false),
      );
    });

    test('Length is 1', () {
      var string = 't';
      expect(
        isShortTopLevelVariableNameLength(string),
        equals(true),
      );
    });

    test('Length is 0', () {
      var string = '';
      expect(
        isShortTopLevelVariableNameLength(string),
        equals(true),
      );
    });
  });
}
