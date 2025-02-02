import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ItemBookWidget extends StatelessWidget {
  const ItemBookWidget({super.key, required this.width, required this.height});
final double width;
final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.w),
      width:width ,//150.w
      height: height ,//224.h
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(15)),
      child: Image.asset(
        "assets/images/lion.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
