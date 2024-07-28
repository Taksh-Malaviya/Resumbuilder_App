import 'dart:async';

import 'package:flutter/material.dart';
import '../Resumbuilderapp/routes/routes.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.home);
    }
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash"),
      ),
    );
  }
}
