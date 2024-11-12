import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:risk_manage/core/Theme/text.dart';
import 'package:risk_manage/core/widget/appbar.dart';
import 'package:risk_manage/core/widget/text_form.dart';
import 'package:risk_manage/core/widget/title_widget.dart';

class Alghsarah3 extends StatefulWidget {
  const Alghsarah3({super.key, required this.nameBar, required this.nameCanun});
  final String nameBar;
  final String nameCanun;

  @override
  State<Alghsarah3> createState() => _Alghsarah3State();
}

class _Alghsarah3State extends State<Alghsarah3> {
  final TextEditingController controller1 = TextEditingController();

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
                canun: "DR = 2 [ P(L) ]\nOR\nDR = 2 [1 - P(L)]",
              ),
              SizedBox(
                height: 10.h,
              ),
              TextForm(
                lableText: 'P(L)',
                controller: controller1,
              ),
              SizedBox(
                height: 10.h,
              ),
              ElevatedButton(
                onPressed: () {
                  if (controller1.text.isNotEmpty) {
                    // تحويل قيمة controller1 وcontroller2 إلى double لأن القسمة تتطلب أرقام عشرية
                    double value1 = double.parse(controller1.text);

                    setState(() {
                      if (value1 < 0.5) {
                        result = 2 * value1;
                      } else if (value1 >= 0.5 && value1 <= 1) {
                        if (result == 1.0) {
                          result = 2 * (1 - value1);
                          result.toInt();
                        } else {
                          result = 2 * (1 - value1);
                        }
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            insetAnimationDuration: const Duration(seconds: 4),
                            child: Center(
                              child: Text(
                                'ادخل رقم يتراوح ما بين 0 و الواحد الصحيح',
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
                    });
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        insetAnimationDuration: const Duration(seconds: 4),
                        child: Center(
                          child: Text(
                            "الرجاء إدخال قيم في الحقل",
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
                    "P(DR)= $result",
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
