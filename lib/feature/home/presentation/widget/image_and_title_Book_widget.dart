import 'package:book_app/feature/home/data/model/rate_model.dart';
import 'package:book_app/feature/home/presentation/widget/item_book_widget.dart';
import 'package:book_app/feature/home/presentation/widget/rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/model/book_model/item.dart';
import '../control/fetch_feature_book_cubit/fetch_feature_book_use_cubit.dart';
class ImageAndTitleBookWidget extends StatelessWidget {

  const ImageAndTitleBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    Item? item=FetchFeatureBookCubit.get(context).item;
    var info=item?.volumeInfo;
    RateModel rateModel=RateModel(rate:info?.averageRating??0 ,count:info?.ratingsCount??0 );

    return Column(
      children: [
        ItemBookWidget(
          width: 162.w,
          height: 243.h,
          imgUrl: item?.volumeInfo?.imageLinks?.thumbnail,
        ),
        SizedBox(height: 30.h),
        Text(
          item!.volumeInfo!.title?? "The Jungle Book",
          style: theme.displayLarge!.copyWith(fontSize: 20),
          textAlign:TextAlign.center ,
        ),
        SizedBox(height: 6.h),
        item.volumeInfo!.authors![0].isEmpty?
        Text(
          "authors",
          style: theme.titleMedium,
        ):
        Text(
          item.volumeInfo!.authors![0],
          style: theme.titleMedium,
        ),
        SizedBox(height: 16.h),
        RateWidget(rateModel: rateModel,),
      ],
    );
  }
}
