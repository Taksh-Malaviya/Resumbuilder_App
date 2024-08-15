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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        //title: Text("Splash"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.network(
              "https://cdn.dribbble.com/users/650464/screenshots/5932778/apply-for-job-icon-motion-graphic_v1.gif"),
          Spacer(),
          LinearProgressIndicator(
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
