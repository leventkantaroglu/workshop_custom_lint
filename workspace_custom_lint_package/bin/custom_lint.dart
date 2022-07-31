import 'dart:isolate';

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

const int _minTopLevelVariableNameLength = 2;

void main(List<String> args, SendPort sendPort) {
  startPlugin(sendPort, _ExampleLinter());
}

bool _isShortTopLevelVariableNameLength(String name) {
  return name.length < _minTopLevelVariableNameLength;
}

class _ExampleLinter extends PluginBase {
  @override
  Stream<Lint> getLints(ResolvedUnitResult resolvedUnitResult) async* {
    final library = resolvedUnitResult.libraryElement;

    final topLevelVariables =
        library.topLevelElements.whereType<VariableElement>().toList();

    for (final currentVariable in topLevelVariables) {
      if (_isShortTopLevelVariableNameLength(currentVariable.name)) {
        yield Lint(
          code: 'top_level_variables_name_longer_than_one_char',
          message: 'Top level variable names should contain at least two chars',
          location: currentVariable.nameLintLocation!,
        );
      }
    }
  }
}
