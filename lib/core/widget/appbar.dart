import 'package:flutter/material.dart';
import 'package:risk_manage/core/Theme/text.dart';

AppBar appbar(String text) {
  return AppBar(
    title: Text(
      text,
      style: StyleTheme.styel1,
    ),
    centerTitle: true,
  );
}
