import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String skill1 = "";
String skill2 = "";

class Skillpage extends StatefulWidget {
  const Skillpage({super.key});

  @override
  State<Skillpage> createState() => _SkillpageState();
}

class _SkillpageState extends State<Skillpage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Skill's"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Enter your skill",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
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
                            hintText: "C lan",
                            hintStyle: TextStyle(color: Colors.grey),
                            labelText: "Skill",
                            labelStyle:
                                TextStyle(color: Colors.grey, fontSize: 20),
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
                            val = skill1;
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
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
                            hintText: "C lan",
                            hintStyle: TextStyle(color: Colors.grey),
                            labelText: "Skill",
                            labelStyle:
                                TextStyle(color: Colors.grey, fontSize: 20),
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
                            val = skill2;
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
