import 'package:book_app/feature/home/data/model/book_model/item.dart';
import 'package:book_app/feature/home/presentation/widget/app_bar_widget.dart';
import 'package:book_app/feature/home/presentation/widget/btn_in_screen_details_widget.dart';
import 'package:book_app/feature/home/presentation/widget/image_and_title_Book_widget.dart';
import 'package:book_app/feature/home/presentation/widget/you_can_like_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyBookDetailsWidget extends StatelessWidget {
  const BodyBookDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //app bar
          AppBarWidget(),
          SizedBox(height: 30.h),
          //image title rate
          ImageAndTitleBookWidget(),
          SizedBox(height: 35.h),
          BtnInScreenDetailsWidget(),
          SizedBox(height: 35.h),
          YouCanLikeWidget()
        ],
      ),
    );
  }
}
