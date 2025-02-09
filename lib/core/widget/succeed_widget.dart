import 'package:book_app/config/route/app_go_router.dart';
import 'package:book_app/config/route/app_route.dart';
import 'package:book_app/feature/home/presentation/control/fetch_feature_book_cubit/fetch_feature_book_use_cubit.dart';
import 'package:book_app/feature/home/presentation/widget/item_book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SucceedWidget extends StatelessWidget {
  final List list;

  const SucceedWidget({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224.h,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            FetchFeatureBookCubit.get(context).getChangeItem(list[index]);
            context.push(AppGoRouter.bookDetailsScreen);
          },
          child: ItemBookWidget(
            imgUrl: list[index].volumeInfo?.imageLinks?.thumbnail ??
                "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png",
            width: 150.w,
            height: 224.h,
          ),
        ),
      ),
    );
  }
}
