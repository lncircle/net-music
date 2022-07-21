import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MinePage extends StatelessWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: 200.w,
          width: 0.9.sw,
          child: Stack(
            alignment: Alignment.center,
            children: [],
          ),
        )
      ],
    )));
  }
}
