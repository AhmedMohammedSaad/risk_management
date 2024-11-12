import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:risk_manage/core/widget/appbar.dart';
import 'package:risk_manage/model/man_model.dart';
import 'package:risk_manage/feauters/risk_measurement/screen/risk_measurement.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Insurance And Risk Management"),
        body: ListView.builder(
          itemCount: ModelRisk.categoryTitle.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RiskMeasurement(
                          nameAppBar: ModelRisk.categoryTitle[index].title,
                        ),
                      ),
                    );
                    break;
                  case 1:
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        insetAnimationDuration: const Duration(seconds: 50),
                        child: Center(
                          child: Text(
                            "تحت التطوير",
                            style: GoogleFonts.rakkas(
                              fontSize: 35,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 36, 28, 28),
                            ),
                          ),
                        ),
                      ),
                    );
                    break;
                  case 2:
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        child: Center(
                          child: Text(
                            "تحت التطوير",
                            style: GoogleFonts.rakkas(
                              fontSize: 35,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 36, 28, 28),
                            ),
                          ),
                        ),
                      ),
                    );
                }
              },
              child: Container(
                margin: EdgeInsets.all(12),
                alignment: Alignment.center,
                width: 300.w,
                height: 300.h,
                decoration: BoxDecoration(
                  color: ModelRisk.categoryTitle[index].colors,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  ModelRisk.categoryTitle[index].title,
                  style: GoogleFonts.rakkas(
                    fontSize: 35.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
