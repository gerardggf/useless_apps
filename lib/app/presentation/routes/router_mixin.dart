import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:useless_apps/app/presentation/modules/home/home_view.dart';
import 'package:useless_apps/app/presentation/modules/word_binder/word_binder_view.dart';
import 'package:useless_apps/app/useless_app.dart';

mixin RouterMixin on State<UselessApp> {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
        name: HomeView.routeName,
      ),
      GoRoute(
        path: '/word-binder',
        builder: (context, state) => const WordBinderView(),
        name: WordBinderView.routeName,
      ),
    ],
  );
}
