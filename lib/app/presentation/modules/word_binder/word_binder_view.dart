import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:useless_apps/app/core/extensions/num_to_sizedbox_extension.dart';
import 'package:useless_apps/app/presentation/modules/word_binder/word_binder_controller.dart';

import '../../../core/const/colors.dart';

class WordBinderView extends ConsumerStatefulWidget {
  const WordBinderView({super.key});

  static const String routeName = 'word-binder';

  @override
  ConsumerState<WordBinderView> createState() => _WordBinderViewState();
}

class _WordBinderViewState extends ConsumerState<WordBinderView> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(wordBinderControllerProvider);
    final notifier = ref.read(wordBinderControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Word binder',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (state.isNotEmpty)
              IconButton(
                onPressed: () {
                  Share.share(
                    'Eres un ${state.toLowerCase()}',
                  );
                },
                icon: const Icon(
                  Icons.share,
                  color: AppColors.primary,
                  size: 40,
                ),
              ),
            if (state.isNotEmpty) 20.h,
            if (state.isNotEmpty)
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  state,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            if (state.isNotEmpty) 30.h,
            ElevatedButton(
              onPressed: () {
                notifier.updateRandomWord();
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Text(
                  'Nueva palabra',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
