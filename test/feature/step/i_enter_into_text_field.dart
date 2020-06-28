import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iEnterIntoTextField(
    WidgetTester tester, String text, int index) async {
  final textField = find.byType(TextField).at(index);
  await tester.enterText(textField, text);
}
