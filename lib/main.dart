import 'package:flutter/material.dart';
import 'package:projectPet/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // สร้างสีครีม

    final creamColor = Color(0xFFCEC4B3); // เลือกรหัสสีที่ต้องการ
    final gColor = Color(0xFFFFFADD);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '🐾 PET WORLD 🐾 ',
      theme: ThemeData(
        primarySwatch: createMaterialColor(Colors.red.shade200),
        scaffoldBackgroundColor: creamColor, // กำหนดสีพื้นหลังเป็นสีครีม
      ),
      home: LoginPage(),
    );
  }
}

MaterialColor createMaterialColor(Color color) {
  List<int> strengths = <int>[50, 100, 200, 300, 400, 500, 600, 700, 800, 900];
  Map<int, Color> swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int strength in strengths) {
    final double ds = 0.5 - ((strength / 1000.0) / 2);
    swatch[strength] = Color.fromRGBO(
      r,
      g,
      b,
      ds,
    );
  }

  return MaterialColor(color.value, swatch);
}