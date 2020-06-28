import 'package:finished_notes_firebase_ddd_course/presentation/app_widget.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await tester.pumpWidget(AppWidget());
  await tester.pumpAndSettle();
}
