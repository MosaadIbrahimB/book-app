import 'package:book_app/feature/home/presentation/widget/item_book_widget.dart';
import 'package:book_app/feature/home/presentation/widget/rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ImageAndTitleBookWidget extends StatelessWidget {
  const ImageAndTitleBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;

    return Column(
      children: [
        ItemBookWidget(
          width: 162.w,
          height: 243.h,
        ),
        SizedBox(height: 30.h),
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
      ],
    );
  }
}
