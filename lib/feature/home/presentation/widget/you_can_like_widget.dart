import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class YouCanLikeWidget extends StatelessWidget {
  const YouCanLikeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 112.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return  Container(
                height: 110.h,
                width: 70.w,
                margin: EdgeInsets.only(right: 10.w),
                decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage("assets/images/harry.png")),
                ),
              );

            },
          ),
        ),
      ],
    );
  }
}
