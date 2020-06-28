import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/auth/i_auth_facade.dart';
import 'package:finished_notes_firebase_ddd_course/domain/auth/user.dart';
import 'package:finished_notes_firebase_ddd_course/domain/auth/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../util/injection_helper.dart';

Future<void> imLoggedIn(WidgetTester tester) async {
  setupInjection();
  final auth = getIt<IAuthFacade>();
  when(auth.getSignedInUser()).thenAnswer(
    (realInvocation) => Future.value(
      some(
        User(
          id: UniqueId(),
          name: StringSingleLine('Test'),
          emailAddress: EmailAddress('test@test.com'),
        ),
      ),
    ),
  );
}
