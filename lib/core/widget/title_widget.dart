import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:risk_manage/core/Theme/text.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.nameTitle,
    required this.nameCanun,
    required this.canun,
  });
  final String nameTitle;
  final String nameCanun;
  final String canun;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                nameTitle,
                style: StyleTheme.styel1,
                textAlign: TextAlign.right,
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            nameCanun,
            style: StyleTheme.title,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            canun,
            style: StyleTheme.styel2,
          ),
        ],
      ),
    );
  }
}
