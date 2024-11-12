import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:risk_manage/core/Theme/text.dart';
import 'package:risk_manage/core/widget/appbar.dart';
import 'package:risk_manage/core/widget/text_form.dart';
import 'package:risk_manage/core/widget/title_widget.dart';

class Alghsarah9 extends StatefulWidget {
  const Alghsarah9({super.key, required this.nameBar, required this.nameCanun});
  final String nameBar;
  final String nameCanun;

  @override
  State<Alghsarah9> createState() => _Alghsarah9State();
}

class _Alghsarah9State extends State<Alghsarah9> {
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
                canun: "C . V = 6 / u * 100",
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: '6',
                controller: controller1,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: 'u',
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
                      result = value1 / value2 * 100;
                    });
                    // التحقق من أن value2 لا تساوي صفرًا لتجنب خطأ القسمة على الصفر
                    if (value2 != 0) {
                      double result = value1 / value2 * 100;
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          insetAnimationDuration: const Duration(seconds: 4),
                          child: Center(
                            child: Text(
                              'C . V =  $result',
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
                          insetAnimationDuration: const Duration(seconds: 4),
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
                    "C . V= $result",
                    style: StyleTheme.styel1,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              //! ******************************************************************
              SizedBox(
                height: 10.h,
              ),
              Text('_________________________________'),
              SizedBox(
                height: 10.h,
              ),

              TitleWidget(
                nameTitle: '',
                nameCanun: "القانون",
                canun: "C . V = 6 / M * 100",
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: '6',
                controller: controller1,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: 'u',
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
                      result = value1 / value2 * 100;
                    });
                    // التحقق من أن value2 لا تساوي صفرًا لتجنب خطأ القسمة على الصفر
                    if (value2 != 0) {
                      double result = value1 / value2 * 100;
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          insetAnimationDuration: const Duration(seconds: 4),
                          child: Center(
                            child: Text(
                              'C . V =  $result',
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
                          insetAnimationDuration: const Duration(seconds: 4),
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
                    "C . V= $result",
                    style: StyleTheme.styel1,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
