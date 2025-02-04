import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224.h,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}