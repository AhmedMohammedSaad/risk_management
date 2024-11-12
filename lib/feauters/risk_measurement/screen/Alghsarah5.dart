// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:risk_manage/core/Theme/text.dart';
import 'package:risk_manage/core/widget/appbar.dart';
import 'package:risk_manage/core/widget/text_form.dart';
import 'package:risk_manage/core/widget/title_widget.dart';

class Alghsarah5 extends StatefulWidget {
  const Alghsarah5({super.key, required this.nameBar, required this.nameCanun});
  final String nameBar;
  final String nameCanun;

  @override
  State<Alghsarah5> createState() => _Alghsarah5State();
}

class _Alghsarah5State extends State<Alghsarah5> {
  final TextEditingController controller1 = TextEditingController();

  final TextEditingController controller2 = TextEditingController();

  final TextEditingController controller3 = TextEditingController();

  final TextEditingController controller4 = TextEditingController();
  double result = 0;
  double result1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(widget.nameBar),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TitleWidget(
                nameTitle: widget.nameCanun,
                nameCanun: "القانون",
                canun: "u = Xi * P(Xi)",
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: 'Xi',
                controller: controller1,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: 'P(Xi)',
                controller: controller2,
              ),
              SizedBox(
                height: 10.h,
              ),
              ElevatedButton(
                onPressed: () {
                  if (controller1.text.isNotEmpty &&
                      controller2.text.isNotEmpty) {
                    // تحويل قيمة controller1 وcontroller2 إلى double لأن القسمة تتطلب أرقام عشرية
                    double value1 = double.parse(controller1.text);
                    double value2 = double.parse(controller2.text);
                    setState(() {
                      result = value1 * value2;
                    });
                    // التحقق من أن value2 لا تساوي صفرًا لتجنب خطأ القسمة على الصفر
                    if (value2 != 0) {
                      double result = value1 * value2;
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          insetAnimationDuration: const Duration(seconds: 50),
                          child: Center(
                            child: Text(
                              'u=  $result',
                              style: GoogleFonts.rakkas(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 36, 28, 28),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    }
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        insetAnimationDuration: const Duration(seconds: 50),
                        child: Center(
                          child: Text(
                            "الرجاء إدخال قيم صحيحة في كلا الحقلين",
                            style: GoogleFonts.rakkas(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 36, 28, 28),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  }
                },
                child: Text(
                  "Result",
                  style: StyleTheme.styel1,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  SizedBox(),
                  Text(
                    "u= $result",
                    style: StyleTheme.styel1,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
//! **********************************************************************//

              TitleWidget(
                nameTitle: '',
                nameCanun: "القانون الثاني",
                canun: "u = X * P(L)",
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: 'X',
                controller: controller3,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: 'P(L)',
                controller: controller4,
              ),
              SizedBox(
                height: 10.h,
              ),
              ElevatedButton(
                onPressed: () {
                  if (controller1.text.isNotEmpty &&
                      controller2.text.isNotEmpty) {
                    // تحويل قيمة controller1 وcontroller2 إلى double لأن القسمة تتطلب أرقام عشرية
                    double value3 = double.parse(controller3.text);
                    double value4 = double.parse(controller4.text);
                    setState(() {
                      result = value3 / value4;
                    });
                    // التحقق من أن value2 لا تساوي صفرًا لتجنب خطأ القسمة على الصفر
                    if (value4 != 0) {
                      double result2 = value3 * value4;
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          insetAnimationDuration: const Duration(seconds: 50),
                          child: Center(
                            child: Text(
                              'u=  $result2',
                              style: GoogleFonts.rakkas(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 36, 28, 28),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    }
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        insetAnimationDuration: const Duration(seconds: 50),
                        child: Center(
                          child: Text(
                            "الرجاء إدخال قيم صحيحة في كلا الحقلين",
                            style: GoogleFonts.rakkas(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 36, 28, 28),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  }
                },
                child: Text(
                  "Result",
                  style: StyleTheme.styel1,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  SizedBox(),
                  Text(
                    "u= $result1",
                    style: StyleTheme.styel1,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
