import 'package:flutter/material.dart';

class WordBinderView extends StatefulWidget {
  const WordBinderView({super.key});

  static const String routeName = 'word-binder';

  @override
  State<WordBinderView> createState() => _WordBinderViewState();
}

class _WordBinderViewState extends State<WordBinderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word binder'),
      ),
      body: const Center(
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
