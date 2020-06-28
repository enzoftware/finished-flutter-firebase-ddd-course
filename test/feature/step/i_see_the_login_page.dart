import 'package:flutter_test/flutter_test.dart';

import 'i_see_text.dart';

Future<void> iSeeTheLoginPage(WidgetTester tester) async {
  await iSeeText(tester, 'Email');
  await iSeeText(tester, 'Password');
  await iSeeText(tester, 'SIGN IN');
  await iSeeText(tester, 'SIGN IN WITH GOOGLE');
  await iSeeText(tester, 'REGISTER');
}
