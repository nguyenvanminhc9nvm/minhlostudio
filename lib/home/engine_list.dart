import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minhlostudio_page/utils/images.dart';

class EngineListWidget extends StatefulWidget {
  const EngineListWidget({super.key});

  @override
  State<EngineListWidget> createState() => _EngineListWidgetState();
}

class _EngineListWidgetState extends State<EngineListWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Image.asset(AppImages.icFlutter),),
        SizedBox(width: 10.sp),
        Expanded(child: Image.asset(AppImages.icUe5),),
      ],
    );
  }
}
