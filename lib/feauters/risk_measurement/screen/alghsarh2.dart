import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:risk_manage/core/Theme/text.dart';
import 'package:risk_manage/core/widget/appbar.dart';
import 'package:risk_manage/core/widget/text_form.dart';
import 'package:risk_manage/core/widget/title_widget.dart';

class Alghsarah2 extends StatefulWidget {
  const Alghsarah2({super.key, required this.nameBar, required this.nameCanun});
  final String nameBar;
  final String nameCanun;

  @override
  State<Alghsarah2> createState() => _Alghsarah2State();
}

class _Alghsarah2State extends State<Alghsarah2> {
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
                canun: "P(L)= m/N = 1 - P(X=0)",
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: 'm',
                controller: controller1,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: 'N',
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
                      result = value1 / value2;
                    });
                    // التحقق من أن value2 لا تساوي صفرًا لتجنب خطأ القسمة على الصفر
                    if (value2 != 0) {
                      double result = value1 / value2;
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          insetAnimationDuration: const Duration(seconds: 50),
                          child: Center(
                            child: Text(
                              'P(L)=  $result',
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
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          insetAnimationDuration: const Duration(seconds: 50),
                          child: Center(
                            child: Text(
                              "لا يمكن القسمة على صفر!",
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
                    "P(L)= $result",
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
