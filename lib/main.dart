import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_redemption/src/pages/auth/components/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Redemption zero",
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white.withAlpha(190)
      ),
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}