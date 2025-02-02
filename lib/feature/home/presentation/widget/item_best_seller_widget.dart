import 'package:book_app/core/utils/app_consrain.dart';
import 'package:book_app/feature/home/presentation/widget/price_and_rate_widget.dart';
import 'package:book_app/feature/home/presentation/widget/rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ItemBestSellerWidget extends StatelessWidget {
  const ItemBestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      // color: Colors.red,
      margin: EdgeInsets.only(bottom: 20),
      width: 298.w,
      height: 115.h,

      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/harry.png", width: 70.w, height: 115.h),
          SizedBox(width: 8),
          Expanded(
            child: Container(
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppConstrain.harry,
                      style: theme.textTheme.displayMedium),
                  Text(
                    "J.K. Rowling",
                    style: theme.textTheme.titleMedium,
                  ),
                  Expanded(child: SizedBox()),
                  PriceAndRateWidget()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

