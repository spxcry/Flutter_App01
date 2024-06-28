  import 'package:flutter/material.dart';
  //import 'package:flutter/widgets.dart';

  class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return  Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blueAccent, Colors.cyanAccent],
            begin: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0), 
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset("images/flutter-logo.png", height: 150),
                  Text('Mobile Application Development Using Flutter',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
  }