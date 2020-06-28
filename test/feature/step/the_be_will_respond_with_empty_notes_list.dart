import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/notes/i_note_repository.dart';
import 'package:finished_notes_firebase_ddd_course/domain/notes/note.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

Future<void> theBeWillRespondWithEmptyNotesList(WidgetTester tester) async {
  final repository = getIt<INoteRepository>();
  final emptyList = <Note>[].toImmutableList();
  when(repository.watchAll())
      .thenAnswer((realInvocation) => Stream.fromIterable([right(emptyList)]));
}
