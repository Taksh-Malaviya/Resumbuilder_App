import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Experiance extends StatefulWidget {
  const Experiance({super.key});

  @override
  State<Experiance> createState() => _ExperianceState();
}

class _ExperianceState extends State<Experiance> {
  String cname = "";
  String Status = "";
  String roal = "";
  int? expyear;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Experience"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.green,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.green,
                  focusColor: Colors.green,
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Company Name",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
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
                  val = cname;
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              TextFormField(
                cursorColor: Colors.green,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.green,
                  focusColor: Colors.green,
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Roal (optional)",
                  hintText: "HR",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
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
                  val = cname;
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              TextFormField(
                cursorColor: Colors.green,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.green,
                  focusColor: Colors.green,
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Experiance Year's (optional)",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
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
                  val = expyear.toString();
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              // Radio(
              //   value: "Previously Employed",
              //   groupValue: Status,
              //   onChanged: (val) {
              //     Status = val!;
              //     setState(() {});
              //   },
              // ),

              TextFormField(
                cursorColor: Colors.green,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  fillColor: Colors.green,
                  focusColor: Colors.green,
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Date joined",
                  hintText: "DD/MM/YYYY",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
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
                  val = expyear.toString();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
