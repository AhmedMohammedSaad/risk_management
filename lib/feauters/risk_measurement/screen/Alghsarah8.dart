import 'dart:math'; // استيراد مكتبة الرياضيات

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:risk_manage/core/Theme/text.dart';
import 'package:risk_manage/core/widget/appbar.dart';
import 'package:risk_manage/core/widget/text_form.dart';
import 'package:risk_manage/core/widget/title_widget.dart';

class Alghsarah8 extends StatefulWidget {
  const Alghsarah8({super.key, required this.nameBar, required this.nameCanun});
  final String nameBar;
  final String nameCanun;

  @override
  State<Alghsarah8> createState() => _Alghsarah8State();
}

class _Alghsarah8State extends State<Alghsarah8> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  double result = 0;

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
                canun: "6 = √(X^2 P(Xi)) - (Xi P(Xi))",
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: 'X^2 P(Xi)',
                controller: controller1,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: 'Xi P(Xi)',
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

                    // حساب القيمة التي تحت الجذر (X^2 P(Xi)) - (Xi P(Xi))
                    double valueUnderRoot = value1 - pow(value2, 2);

                    if (valueUnderRoot >= 0) {
                      // حساب الجذر التربيعي باستخدام sqrt() بعد استيراد مكتبة dart:math
                      setState(() {
                        result = sqrt(
                            valueUnderRoot); // استخدام sqrt لحساب الجذر التربيعي
                      });

                      // عرض النتيجة في Dialog
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          insetAnimationDuration: const Duration(seconds: 4),
                          child: Center(
                            child: Text(
                              '6 = √ $result',
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
                    } else {
                      // إذا كانت القيمة تحت الجذر سالبة
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          insetAnimationDuration: const Duration(seconds: 4),
                          child: Center(
                            child: Text(
                              "القيمة تحت الجذر سالبة! لا يمكن حساب الجذر التربيعي.",
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
                        insetAnimationDuration: const Duration(seconds: 4),
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
                    "6 = √ $result",
                    style: StyleTheme.styel1,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
