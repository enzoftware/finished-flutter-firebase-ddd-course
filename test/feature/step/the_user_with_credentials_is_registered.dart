import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/auth/i_auth_facade.dart';
import 'package:finished_notes_firebase_ddd_course/domain/auth/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

Future<void> theUserWithCredentialsIsRegistered(
    WidgetTester tester, String email, String password) async {
  final auth = getIt<IAuthFacade>();
  when(auth.signInWithEmailAndPassword(
          emailAddress: EmailAddress(email), password: Password(password)))
      .thenAnswer((realInvocation) => Future.value(right(unit)));
}
