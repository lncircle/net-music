import 'package:flutter/material.dart';
import 'package:net_application/tabBar/index_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(750, 1334),
      builder: (context, child) {
        return MaterialApp(
            title: 'Flutter',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const IndexPage());
      },
    );
  }
}
