import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:gospelai_multi_web_admin/views/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: kIsWeb || Platform.isAndroid
          ? FirebaseOptions(
              apiKey: "AIzaSyBkfElBklF-o0-JNrXsScA-CfgFBvMZhxg",
              appId: "1:266821751062:web:6efe4105b417e6a376c037",
              messagingSenderId: "266821751062",
              projectId: "gospelai-multi-store",
              storageBucket: "gospelai-multi-store.appspot.com",
            )
          : null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gospel AI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      builder: EasyLoading.init(),
    );
  }
}
