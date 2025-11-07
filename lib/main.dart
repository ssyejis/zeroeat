import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'config/theme.dart';

import 'config/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const ZeroEatApp());
}

class ZeroEatApp extends StatelessWidget {
  const ZeroEatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZERO:EAT',
      theme: zeroEatTheme,
      themeMode: ThemeMode.system,
      onGenerateRoute: ZeroEatRouter.onGenerateRoute,
      initialRoute: ZeroEatRouter.initialRoute,
    );
  }
}