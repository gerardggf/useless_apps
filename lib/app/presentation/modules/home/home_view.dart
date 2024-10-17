import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:useless_apps/app/core/const/global.dart';
import 'package:useless_apps/app/presentation/modules/word_binder/word_binder_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.question_mark_outlined,
        ),
        title: const Text(
          Global.appName,
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.join_full),
            title: const Text('Word Binder'),
            onTap: () {
              context.pushNamed(WordBinderView.routeName);
            },
          ),
        ],
      ),
    );
  }
}
