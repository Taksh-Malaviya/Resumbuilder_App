import 'dart:async';

import 'package:flutter/material.dart';
import '../Resumbuilderapp/routes/routes.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Routes.home);
      // Navigator.pushNamed(context, Routes.home);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.network("https://www.realtimecv.com/images/scanner.gif"),
          Spacer(),
          LinearProgressIndicator(
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
