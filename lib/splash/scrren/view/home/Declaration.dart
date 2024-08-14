import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String declaration = "";
String decdate = "";
String decplace = "";

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  bool index = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Declaration"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Declaration",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Switch(
                    activeColor: Colors.green,
                    value: index,
                    onChanged: (val) {
                      index = val;
                      setState(() {});
                    },
                  ),
                ],
              ),
              Visibility(
                visible: index,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
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
                        val = declaration;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      cursorColor: Colors.green,
                      cursorWidth: 2,
                      style: const TextStyle(fontWeight: FontWeight.w400),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        fillColor: Colors.green,
                        focusColor: Colors.green,
                        hintText: "DD/MM/YYYY",
                        hintStyle: TextStyle(color: Colors.grey),
                        labelText: "Birth date",
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
                        val = decdate;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          "  Place(venue/city)",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      cursorColor: Colors.green,
                      cursorWidth: 2,
                      style: const TextStyle(fontWeight: FontWeight.w400),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        fillColor: Colors.green,
                        focusColor: Colors.green,
                        hintText: "Eg. Surat",
                        hintStyle: TextStyle(color: Colors.grey),
                        labelText: "City",
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
                        val = decplace;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
