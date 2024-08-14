import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resumbuilder/splash/scrren/personal/personal.dart';
import 'package:resumbuilder/splash/scrren/view/home/Declaration.dart';
import 'package:resumbuilder/splash/scrren/view/home/exp.dart';
import 'package:resumbuilder/splash/scrren/view/home/skill.dart';

class Pdf extends StatefulWidget {
  const Pdf({super.key});

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  Future<Uint8List> pdfView() async {
    pw.Document pdf = pw.Document();

    ByteData assetByteData = await rootBundle.load("assets/images/call.png");

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) => pw.Row(
          children: [
            pw.Expanded(
              child: pw.Container(
                decoration: const pw.BoxDecoration(
                  color: PdfColor.fromInt(0xff163853),
                  borderRadius: pw.BorderRadius.only(
                    topLeft: pw.Radius.circular(25),
                    bottomLeft: pw.Radius.circular(25),
                  ),
                ),
                padding: const pw.EdgeInsets.all(18),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Container(
                      height: 120.h,
                      width: 120.w,
                      decoration: const pw.BoxDecoration(
                        color: PdfColors.white,
                        shape: pw.BoxShape.circle,
                      ),
                      alignment: pw.Alignment.center,
                      child: pw.Container(
                        height: 110.h,
                        width: 110.w,
                        decoration: pw.BoxDecoration(
                          color: PdfColors.grey,
                          shape: pw.BoxShape.circle,
                          image: pw.DecorationImage(
                            image: pw.MemoryImage(
                              image!.readAsBytesSync(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    pw.SizedBox(height: 25.h),
                    pw.Text(
                      "CONTACT",
                      style: pw.TextStyle(
                        fontSize: 20.sp,
                        color: PdfColors.white,
                        // font: pw.Font.timesBold(),
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Divider(
                      color: PdfColors.white,
                      thickness: 2.w,
                    ),
                    pw.Row(
                      children: [
                        pw.Image(
                          pw.MemoryImage(
                            assetByteData.buffer.asUint8List(),
                          ),
                          height: 15.h,
                        ),
                        pw.Text(
                          num,
                          style: pw.TextStyle(
                            fontSize: 14.sp,
                            color: PdfColors.white,
                          ),
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        pw.Image(
                          pw.MemoryImage(
                            assetByteData.buffer.asUint8List(),
                          ),
                          height: 15.h,
                        ),
                        pw.Text(
                          email,
                          style: pw.TextStyle(
                            fontSize: 14.sp,
                            color: PdfColors.white,
                          ),
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        pw.Image(
                          pw.MemoryImage(
                            assetByteData.buffer.asUint8List(),
                          ),
                          height: 5.h,
                        ),
                        pw.Text(
                          add,
                          style: pw.TextStyle(
                            fontSize: 14.sp,
                            color: PdfColors.white,
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 20.h),
                    pw.Text(
                      "Skill",
                      style: pw.TextStyle(
                        fontSize: 20.sp,
                        color: PdfColors.white,
                        // font: pw.Font.timesBold(),
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Divider(
                      color: PdfColors.white,
                      thickness: 2.w,
                    ),
                    pw.Text(
                      "C Language",
                      style: pw.TextStyle(
                          color: PdfColors.white,
                          fontWeight: pw.FontWeight.bold),
                    ),
                    pw.SizedBox(height: 5.h),
                    pw.Text(
                      "Dart",
                      style: pw.TextStyle(
                        color: PdfColors.white,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.SizedBox(height: 5.h),
                    pw.Text(
                      "C ++",
                      style: pw.TextStyle(
                          color: PdfColors.white,
                          fontWeight: pw.FontWeight.bold),
                    ),
                    pw.SizedBox(height: 20.h),
                    pw.Text(
                      "languages",
                      style: pw.TextStyle(
                        fontSize: 20.sp,
                        color: PdfColors.white,
                        // font: pw.Font.timesBold(),
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Divider(
                      color: PdfColors.white,
                      thickness: 2.w,
                    ),
                    pw.Text(
                      "Hindi",
                      style: pw.TextStyle(
                          color: PdfColors.white,
                          fontWeight: pw.FontWeight.bold),
                    ),
                    pw.SizedBox(height: 5.h),
                    pw.Text(
                      "Gujarati",
                      style: pw.TextStyle(
                        color: PdfColors.white,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.SizedBox(height: 5.h),
                    pw.Text(
                      "English",
                      style: pw.TextStyle(
                          color: PdfColors.white,
                          fontWeight: pw.FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            pw.Expanded(
              flex: 2,
              child: pw.Container(
                decoration: pw.BoxDecoration(
                  color: PdfColors.white,
                  border: pw.Border.all(
                    color: PdfColors.grey,
                    width: 2.w,
                  ),
                  borderRadius: const pw.BorderRadius.only(
                    topRight: pw.Radius.circular(25),
                    bottomRight: pw.Radius.circular(25),
                  ),
                ),
                padding: const pw.EdgeInsets.all(25),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Row(
                      children: [
                        pw.Text(
                          name.split(' ')[0],
                          style: pw.TextStyle(
                            fontSize: 35.sp,
                            font: pw.Font.timesBold(),
                            color: const PdfColor.fromInt(0xff555555),
                          ),
                        ),
                        pw.Text(
                          " ${name.split(' ')[1]}",
                          style: pw.TextStyle(
                            fontSize: 35.sp,
                            font: pw.Font.times(),
                          ),
                        ),
                      ],
                    ),
                    pw.Text(
                      "Flutter Developer",
                      style: pw.TextStyle(
                        fontSize: 18.sp,
                        color: const PdfColor.fromInt(0xff555555),
                      ),
                    ),
                    pw.SizedBox(height: 20.h),
                    pw.Text(
                      "PROFILE",
                      style: pw.TextStyle(
                        fontSize: 20.sp,
                        font: pw.Font.timesBold(),
                        color: const PdfColor.fromInt(0xff163853),
                      ),
                    ),
                    pw.Divider(
                      thickness: 2,
                      color: PdfColor.fromInt(0xff163853),
                    ),
                    pw.Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation. Lorem ipsum dolor dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation. Ut enim ad minim veniam quis nostrud exercitation.",
                      style: pw.TextStyle(
                        fontSize: 13.sp,
                        color: const PdfColor.fromInt(0xff163853),
                      ),
                    ),
                    pw.SizedBox(height: 20.h),
                    pw.Text(
                      "Work Exprience",
                      style: pw.TextStyle(
                        fontSize: 20.sp,
                        font: pw.Font.timesBold(),
                        color: const PdfColor.fromInt(0xff163853),
                      ),
                    ),
                    pw.Divider(
                      thickness: 2,
                      color: PdfColor.fromInt(0xff163853),
                    ),
                    pw.SizedBox(height: 5.h),
                    pw.Text(
                      "Company :  Surat Info",
                      style: pw.TextStyle(
                        fontSize: 13.sp,
                        color: const PdfColor.fromInt(0xff163853),
                      ),
                    ),
                    pw.SizedBox(height: 5.h),
                    pw.Text(
                      "Company  Roal : HR",
                      style: pw.TextStyle(
                        fontSize: 13.sp,
                        color: const PdfColor.fromInt(0xff163853),
                      ),
                    ),
                    pw.SizedBox(height: 5.h),
                    pw.Text(
                      "Experiance Year : 2",
                      style: pw.TextStyle(
                        fontSize: 13.sp,
                        color: const PdfColor.fromInt(0xff163853),
                      ),
                    ),
                    pw.SizedBox(height: 20.h),
                    pw.Text(
                      "Declaration",
                      style: pw.TextStyle(
                        fontSize: 20.sp,
                        font: pw.Font.timesBold(),
                        color: const PdfColor.fromInt(0xff163853),
                      ),
                    ),
                    pw.Divider(
                      thickness: 2,
                      color: PdfColor.fromInt(0xff163853),
                    ),
                    pw.Text(
                      "Date of Birth : 23/07/2007",
                      style: pw.TextStyle(
                        fontSize: 13.sp,
                        color: const PdfColor.fromInt(0xff163853),
                      ),
                    ),
                    pw.SizedBox(height: 5.h),
                    pw.Text(
                      "City: Surat",
                      style: pw.TextStyle(
                        fontSize: 13.sp,
                        color: const PdfColor.fromInt(0xff163853),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    return await pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RESUME"),
      ),
      body: PdfPreview(
        pdfFileName: name + ".pdf",
        build: (format) => pdfView(),
      ),
    );
  }
}
