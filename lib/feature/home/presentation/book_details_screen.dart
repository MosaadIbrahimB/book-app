import 'package:book_app/feature/home/presentation/widget/item_book_widget.dart';
import 'package:book_app/feature/home/presentation/widget/price_and_rate_widget.dart';
import 'package:book_app/feature/home/presentation/widget/rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: BodyBookDetailsWidget(),
        ),
      ),
    );
  }
}

class BodyBookDetailsWidget extends StatelessWidget {
  const BodyBookDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Column(
      children: [
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

        RateWidget()
      ],
    );
  }
}
