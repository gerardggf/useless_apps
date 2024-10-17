import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_binder_state.freezed.dart';

@freezed
class WordBinderState with _$WordBinderState {
  const factory WordBinderState({
    @Default('') String word,
    @Default(false) bool firstWordLocked,
    @Default(false) bool secondWordLocked,
  }) = _WordBinderState;
}
