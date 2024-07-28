import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Carrier extends StatefulWidget {
  const Carrier({super.key});

  @override
  State<Carrier> createState() => _CarrierState();
}

class _CarrierState extends State<Carrier> {
  String Des = "";
  String Curr = "";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Carrier Objective"),
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
                maxLines: 6,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.green,
                  focusColor: Colors.green,
                  hintText: "About you...",
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Description",
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
                  val = Des;
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
                  hintText: "Software Engineer",
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Current Designation",
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
                  val = Curr;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
