import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:useless_apps/app/useless_app.dart';

void main() {
  runApp(
    const ProviderScope(
      overrides: [],
      child: UselessApp(),
    ),
  );
}
