import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:useless_apps/app/presentation/modules/word_binder/words/first_word_list.dart';
import 'package:useless_apps/app/presentation/modules/word_binder/words/second_word_list.dart';

final wordBinderControllerProvider =
    StateNotifierProvider<WordBinderController, String>(
  (ref) => WordBinderController(''),
);

class WordBinderController extends StateNotifier<String> {
  WordBinderController(super.state);

  void updateRandomWord() {
    final random = Random();
    final firstWord =
        firstWordList.toList()[random.nextInt(firstWordList.length)];
    final secondWord =
        secondWordList.toList()[random.nextInt(secondWordList.length)];
    state = '$firstWord $secondWord';
  }
}
