import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemBookWidget extends StatelessWidget {

  final double width;
  final double height;
  final String? imgUrl;
  const ItemBookWidget(
      {super.key, required this.width, required this.height, this.imgUrl});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.w),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.fill,
          image:imgUrl==null? AssetImage("assets/images/lion.png"):NetworkImage(imgUrl!),
        ),
      ),
    );
  }
}
