import 'package:finished_notes_firebase_ddd_course/domain/auth/i_auth_facade.dart';
import 'package:finished_notes_firebase_ddd_course/domain/notes/i_note_repository.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

void setupInjection() {
  getIt.reset();
  configureInjection(Environment.test);
  getIt.registerLazySingleton<IAuthFacade>(() => AuthFacadeMock());
  getIt.registerLazySingleton<INoteRepository>(() => NoteRepositoryMock());
}

class AuthFacadeMock extends Mock implements IAuthFacade {}

class NoteRepositoryMock extends Mock implements INoteRepository {}
