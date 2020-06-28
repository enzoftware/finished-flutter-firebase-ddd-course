import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/auth/i_auth_facade.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../util/injection_helper.dart';

Future<void> imNotLoggedIn(WidgetTester tester) async {
  setupInjection();
  final auth = getIt<IAuthFacade>();
  when(auth.getSignedInUser())
      .thenAnswer((realInvocation) => Future.value(none()));
}
