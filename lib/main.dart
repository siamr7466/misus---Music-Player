import 'package:flutter/material.dart';
import 'package:misus/core/theme/theme.dart';
import 'package:misus/features/auth/view/pages/login_page.dart';
// import 'package:misus/features/auth/view/pages/signup_pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'misus',
      theme: AppTheme.darkThemeMode,
      home: LoginPage(),
    );
  }
}
