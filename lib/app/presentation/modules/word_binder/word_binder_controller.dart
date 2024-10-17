import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:useless_apps/app/presentation/modules/word_binder/state/word_binder_state.dart';
import 'package:useless_apps/app/presentation/modules/word_binder/words/first_word_list.dart';
import 'package:useless_apps/app/presentation/modules/word_binder/words/second_word_list.dart';

final wordBinderControllerProvider =
    StateNotifierProvider<WordBinderController, WordBinderState>(
  (ref) => WordBinderController(
    const WordBinderState(),
  ),
);

class WordBinderController extends StateNotifier<WordBinderState> {
  WordBinderController(super.state);

  void updateRandomWord() {
    final random = Random();
    final firstWord = state.firstWordLocked
        ? state.word.split(' ').first
        : firstWordList.toList()[random.nextInt(firstWordList.length)];
    final secondWord = state.secondWordLocked
        ? state.word.split(' ').last
        : secondWordList.toList()[random.nextInt(secondWordList.length)];
    state = state.copyWith(word: '$firstWord $secondWord');
  }

  void updateLockFirstWord(bool value) {
    state = state.copyWith(firstWordLocked: value);
  }

  void updateLockSecondWord(bool value) {
    state = state.copyWith(secondWordLocked: value);
  }
}
