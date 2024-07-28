import 'package:flutter/cupertino.dart';
import 'package:resumbuilder/splash/scrren/personal/personal.dart';
import 'package:resumbuilder/splash/scrren/view/Carrier.dart';
import 'package:resumbuilder/splash/scrren/view/home/home.dart';
import 'package:resumbuilder/splash/splash.dart';

import '../../splash/scrren/view/edu.dart';
import '../../splash/scrren/view/home/exp.dart';

class Routes {
  static String splashscreen = '/';
  static String home = 'home_page';
  static String personal = 'person_page';
  static String education = 'education_page';
  static String carrier = 'carrier_page';
  static String Exp = 'Exp_page';

  static Map<String, WidgetBuilder> myroutes = {
    splashscreen: (context) => const Splash(),
    home: (context) => const HomePage(),
    personal: (context) => const Personal(),
    education: (context) => const Education(),
    carrier: (context) => const Carrier(),
    Exp: (context) => const Experiance(),
  };
}
