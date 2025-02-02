import 'package:book_app/feature/home/presentation/widget/item_book_widget.dart';
import 'package:book_app/feature/home/presentation/widget/rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'btn_in_screen_details_widget.dart';
class BodyBookDetailsWidget extends StatelessWidget {
  const BodyBookDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Column(
      children: [
        //app bar
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.close,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 35,
            ),
          ],
        ),
        SizedBox(height: 35.h),
        //image
        ItemBookWidget(
          width: 162.w,
          height: 243.h,
        ),
        SizedBox(height: 40.h),
        Text(
          "The Jungle Book",
          style: theme.displayLarge,
        ),
        SizedBox(height: 6.h),
        Text(
          "Rudyard Kipling",
          style: theme.titleMedium,
        ),
        SizedBox(height: 16.h),
        RateWidget(),
        SizedBox(height: 37.h),
        BtnInScreenDetailsWidget(),

      ],
    );
  }
}
