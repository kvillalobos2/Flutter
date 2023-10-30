import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nssystem/db/db_helper.dart';
import 'package:nssystem/screens/addPreference.dart';
import 'package:nssystem/screens/splash.screen.dart';

Future<void> main() async {
  await DBHelper.initDb();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      //home: AddPreference(),
    );
  }
}
