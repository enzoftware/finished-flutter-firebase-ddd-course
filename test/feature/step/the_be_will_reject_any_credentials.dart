import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/auth/auth_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/auth/i_auth_facade.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

Future<void> theBeWillRejectAnyCredentials(WidgetTester tester) async {
  final auth = getIt<IAuthFacade>();
  when(auth.signInWithEmailAndPassword(
          emailAddress: anyNamed('emailAddress'),
          password: anyNamed('password')))
      .thenAnswer(
    (realInvocation) => Future.value(
      left(
        const AuthFailure.invalidEmailAndPasswordCombination(),
      ),
    ),
  );
}
