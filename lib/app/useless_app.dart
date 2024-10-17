import 'package:flutter/material.dart';

import 'core/const/global.dart';
import 'presentation/global/theme.dart';
import 'presentation/routes/router_mixin.dart';

class UselessApp extends StatefulWidget {
  const UselessApp({super.key});

  @override
  State<UselessApp> createState() => _UselessAppState();
}

class _UselessAppState extends State<UselessApp> with RouterMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: Global.appName,
      routerConfig: router,theme: UselessTheme.lightTeme,
    );
  }
}
