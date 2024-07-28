import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  String Course = "";
  String School = "";
  String Result = "";
  String Year = "";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Education"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              TextFormField(
                cursorColor: Colors.green,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                maxLines: 1,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.green,
                  focusColor: Colors.green,
                  hintText: "Diploma in Com...",
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Course/Degree...",
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onChanged: (val) {
                  val = Course;
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              TextFormField(
                cursorColor: Colors.green,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                maxLines: 1,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.green,
                  focusColor: Colors.green,
                  hintText: "Bhagavan Mahavir University",
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "School/Collage/Institute...",
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onChanged: (val) {
                  val = School;
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              TextFormField(
                cursorColor: Colors.green,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                maxLines: 1,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.green,
                  focusColor: Colors.green,
                  hintText: "70%(or)7.0 CGPA",
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "School/Collage/Institute...",
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onChanged: (val) {
                  val = Result;
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              TextFormField(
                cursorColor: Colors.green,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                maxLines: 1,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.green,
                  focusColor: Colors.green,
                  hintText: "2019",
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Year of Pass...",
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onChanged: (val) {
                  val = Year;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
