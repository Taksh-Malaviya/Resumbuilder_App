import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resumbuilder/Resumbuilderapp/routes/routes.dart';
import 'package:resumbuilder/splash/scrren/personal/personal.dart';

import '../../../../lists/homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(
          "Create Resume",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: Resume.length,
        itemBuilder: (context, index) {
          final e = Resume[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, e['routes']).then(
                      (value) => setState(() {}),
                    );
                  },
                  child: Container(
                    height: 150.h,
                    width: 350.w,
                    decoration: const BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Transform.scale(
                      scale: 0.5,
                      child: Image.network(
                        e["image"],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  e['text'],
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Visibility(
        visible: image != null,
        child: FloatingActionButton.extended(
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.pushNamed(context, Routes.PDF);
          },
          label: Row(
            children: [
              Text(
                "PDF      ",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.picture_as_pdf,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
