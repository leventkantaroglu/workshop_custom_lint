## Custom Lint Workshop

#### Description:

This repository contains custom lint creation and usage projects.

#### Lint:

```dart
Lint(
  code: 'top_level_variables_name_longer_than_one_char',
  message: 'Top level variable names should contain at least two chars',
  location: currentVariable.nameLintLocation!,
);
```
#### Lint Usage:

```dart
String? n;    // invalid
String? name; // valid
```