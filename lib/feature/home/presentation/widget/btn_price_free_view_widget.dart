import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BtnPriceFreeViewWidget extends StatelessWidget {
  const BtnPriceFreeViewWidget(
      {super.key,
        this.isRight = false,
        this.colorBack = Colors.white,
        this.colorFont = Colors.black,
        required this.data});

  final bool isRight;
  final Color colorBack;
  final Color colorFont;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: colorBack,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isRight ? 0 : 15.r),
                  bottomLeft: Radius.circular(isRight ? 0 : 15.r),
                  topRight: Radius.circular(isRight ? 15.r : 0),
                  bottomRight: Radius.circular(isRight ? 15.r : 0),
                ),
              )),
          onPressed: () {},
          child: Text(data,style: TextStyle(color: colorFont,fontSize: 18),),
        ),
      ),
    );
  }
}
