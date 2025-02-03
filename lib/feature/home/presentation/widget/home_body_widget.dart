import 'package:book_app/config/route/app_route.dart';
import 'package:book_app/feature/home/presentation/widget/item_best_seller_widget.dart';
import 'package:book_app/feature/home/presentation/widget/item_book_widget.dart';
import 'package:book_app/feature/home/presentation/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              SearchBarWidget(),
              SizedBox(height: 42.h),
              SizedBox(
                  height: 224.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => ItemBookWidget(
                      width: 150.w,
                      height: 224.h,
                    ),
                  )),
              SizedBox(height: 40.h),
              Text(
                "Best Seller",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 15.h),
            ],
          ),
        ),
        SliverList.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoute.bookDetailsScreen);
                },
                child: ItemBestSellerWidget());
          },
        ),
      ],
    );

  }
}

