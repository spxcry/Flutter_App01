import 'package:flutter/material.dart';
import 'package:itbru1/screen/post_screen.dart';
import 'screen/login.dart';
import 'screen/register.dart';
import 'screen/app_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/main',
      routes: {
        '/main': (context) => const AppMainScreen(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/post': (context) => const PostScreen(),
      },
    );
  }
}
