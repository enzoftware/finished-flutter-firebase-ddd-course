// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/im_not_logged_in.dart';
import './step/the_app_is_running.dart';
import './step/i_see_the_login_page.dart';
import './step/im_logged_in.dart';
import './step/the_be_will_respond_with_empty_notes_list.dart';
import './step/i_see_text.dart';

void main() {
  group('Splash', () {
    testWidgets('Login page is presented for not logged in user', (WidgetTester tester) async {
      await imNotLoggedIn(tester);
      await theAppIsRunning(tester);
      await iSeeTheLoginPage(tester);
    });
    testWidgets('Notes page is presented for logged in user', (WidgetTester tester) async {
      await imLoggedIn(tester);
      await theBeWillRespondWithEmptyNotesList(tester);
      await theAppIsRunning(tester);
      await iSeeText(tester, 'Notes');
    });
  });
}
