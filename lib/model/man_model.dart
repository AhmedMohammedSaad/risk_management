import 'package:flutter/material.dart';

class ModelRisk {
  String title;
  Color colors;
  ModelRisk({required this.title, required this.colors});

  static List<ModelRisk> categoryTitle = [
    ModelRisk(title: 'قياس الخطر', colors: Colors.red),
    ModelRisk(
        title: 'مبدأ التعويض والمشاركة',
        colors: const Color.fromARGB(255, 11, 191, 17)),
    ModelRisk(title: 'حساب قصت التامين', colors: Colors.cyan),
  ];
}
