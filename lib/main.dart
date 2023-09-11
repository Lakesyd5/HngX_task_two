import 'package:flutter/material.dart';
import 'package:hng_stage_two/commons/utils/app_styles.dart';
import 'package:hng_stage_two/features/Home/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      theme: AppTheme.appThemeData,
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}