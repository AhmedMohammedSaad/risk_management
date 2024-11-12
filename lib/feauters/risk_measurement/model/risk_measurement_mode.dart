import 'package:flutter/material.dart';
import 'package:risk_manage/model/man_model.dart';

List<ModelRisk> riskMeasurementTitle = [
  ModelRisk(
    title: ' Xi لا يوجد أحتمال تحقق قيمة الخسارة',
    colors: const Color.fromRGBO(11, 191, 17, 1),
  ),
  ModelRisk(
    title: 'لا يوجد احتمال تحقق خسارة',
    colors: Colors.red,
  ),
  ModelRisk(
    title: 'لايجاد درجة الخطر باستخدام احتمال تحقق الخطر',
    colors: const Color.fromARGB(255, 109, 55, 150),
  ),
  ModelRisk(
    title: 'Xi الاحتمال الشرطي لتحقق قيمة الخسارة',
    colors: const Color.fromARGB(255, 184, 19, 113),
  ),
  ModelRisk(
    title: "متوسط قيمة الخسارة",
    colors: const Color.fromARGB(255, 194, 69, 19),
  ),
  ModelRisk(
    title: "متوسط قيمة الخسارة الشرطية",
    colors: const Color.fromARGB(255, 68, 16, 115),
  ),
  ModelRisk(
    title: "Xiمركز الفئة",
    colors: const Color.fromARGB(255, 57, 87, 91),
  ),
  ModelRisk(
    title: "الانحراف المعياري للخسارة",
    colors: const Color.fromARGB(255, 95, 17, 17),
  ),
  ModelRisk(
    title: "معامل الاختلاف النسبي",
    colors: const Color.fromARGB(255, 41, 146, 160),
  ),
];
