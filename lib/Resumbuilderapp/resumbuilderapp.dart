import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resumbuilder/Resumbuilderapp/routes/routes.dart';

class ResymbuilderApp extends StatelessWidget {
  const ResymbuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;

    return ScreenUtilInit(
      designSize: Size(size.width,size.height),
      builder: (context,_){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: Routes.myroutes,
        );
      },
    );
  }
}
