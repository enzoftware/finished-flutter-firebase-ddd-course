// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/im_not_logged_in.dart';
import './step/the_user_with_credentials_is_registered.dart';
import './step/the_be_will_respond_with_empty_notes_list.dart';
import './step/the_app_is_running.dart';
import './step/i_enter_into_text_field.dart';
import './step/i_tap_text_and_wait.dart';
import './step/i_see_text.dart';
import './step/the_be_will_reject_any_credentials.dart';
import './step/i_tap_text.dart';
import './step/i_wait.dart';

void main() {
  group('Sign in', () {
    testWidgets('User is able to sign in with valid credentials', (WidgetTester tester) async {
      await imNotLoggedIn(tester);
      await theUserWithCredentialsIsRegistered(tester, 'test@test.com', '123456');
      await theBeWillRespondWithEmptyNotesList(tester);
      await theAppIsRunning(tester);
      await iEnterIntoTextField(tester, 'test@test.com', 0);
      await iEnterIntoTextField(tester, '123456', 1);
      await iTapTextAndWait(tester, 'SIGN IN');
      await iSeeText(tester, 'Notes');
    });
    testWidgets('User is not able to sign in with invalid credentials', (WidgetTester tester) async {
      await imNotLoggedIn(tester);
      await theBeWillRejectAnyCredentials(tester);
      await theAppIsRunning(tester);
      await iEnterIntoTextField(tester, 'test@test.com', 0);
      await iEnterIntoTextField(tester, '123456', 1);
      await iTapText(tester, 'SIGN IN');
      await iSeeText(tester, 'Invalid email and password combination');
      await iWait(tester);
    });
  });
}
