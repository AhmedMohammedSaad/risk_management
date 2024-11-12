import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:risk_manage/core/widget/appbar.dart';
import 'package:risk_manage/feauters/risk_measurement/model/risk_measurement_mode.dart';
import 'package:risk_manage/feauters/risk_measurement/screen/Alghsarah3.dart';
import 'package:risk_manage/feauters/risk_measurement/screen/Alghsarah4.dart';
import 'package:risk_manage/feauters/risk_measurement/screen/Alghsarah5.dart';
import 'package:risk_manage/feauters/risk_measurement/screen/Alghsarah7.dart';
import 'package:risk_manage/feauters/risk_measurement/screen/Alghsarah8.dart';
import 'package:risk_manage/feauters/risk_measurement/screen/Alghsarah9.dart';
import 'package:risk_manage/feauters/risk_measurement/screen/alghsarah1.dart';
import 'package:risk_manage/feauters/risk_measurement/screen/alghsarh2.dart';
import 'package:risk_manage/feauters/risk_measurement/screen/alghsarh6.dart';

class RiskMeasurement extends StatelessWidget {
  const RiskMeasurement({
    super.key,
    required this.nameAppBar,
  });
  final String nameAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(nameAppBar),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1.w,
          mainAxisSpacing: 3.h,
          mainAxisExtent: 230.h,
        ),
        itemCount: riskMeasurementTitle.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Alghsarah1(
                        nameBar: nameAppBar,
                        nameCanun: riskMeasurementTitle[index].title,
                      ),
                    ),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Alghsarah2(
                        nameBar: nameAppBar,
                        nameCanun: riskMeasurementTitle[index].title,
                      ),
                    ),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Alghsarah3(
                        nameBar: nameAppBar,
                        nameCanun: riskMeasurementTitle[index].title,
                      ),
                    ),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Alghsarah4(
                        nameBar: nameAppBar,
                        nameCanun: riskMeasurementTitle[index].title,
                      ),
                    ),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Alghsarah5(
                        nameBar: nameAppBar,
                        nameCanun: riskMeasurementTitle[index].title,
                      ),
                    ),
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Alghsarah6(
                        nameBar: nameAppBar,
                        nameCanun: riskMeasurementTitle[index].title,
                      ),
                    ),
                  );
                  break;
                case 6:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Alghsarah7(
                        nameBar: nameAppBar,
                        nameCanun: riskMeasurementTitle[index].title,
                      ),
                    ),
                  );
                  break;
                case 7:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Alghsarah8(
                        nameBar: nameAppBar,
                        nameCanun: riskMeasurementTitle[index].title,
                      ),
                    ),
                  );
                  break;
                case 8:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Alghsarah9(
                        nameBar: nameAppBar,
                        nameCanun: riskMeasurementTitle[index].title,
                      ),
                    ),
                  );
                  break;
              }
            },
            child: Container(
              margin: EdgeInsets.all(12),
              alignment: Alignment.center,
              width: 340.w,
              height: 300.h,
              decoration: BoxDecoration(
                color: riskMeasurementTitle[index].colors,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                riskMeasurementTitle[index].title,
                style: GoogleFonts.rakkas(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
