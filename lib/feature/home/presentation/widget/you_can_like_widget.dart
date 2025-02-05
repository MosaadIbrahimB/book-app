import 'package:book_app/core/widget/failure_widget.dart';
import 'package:book_app/core/widget/loading_widget.dart';
import 'package:book_app/feature/home/presentation/control/fetch_seller_books_cubit/fetch_seller_books_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/model/book_model/item.dart';
import '../control/fetch_seller_books_cubit/fetch_seller_books_state.dart';

class YouCanLikeWidget extends StatelessWidget {

  const YouCanLikeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
      "You can also like",
      style: Theme
          .of(context)
          .textTheme
          .titleMedium!
          .copyWith(
          color: Colors.white
      ),
    ),
    SizedBox(height: 12.h),

    BlocBuilder<FetchSellerBooksCubit, FetchSellerBooksState>(
    builder: (context, state) {
      if (state is FetchSellerBooksFailure) {
        return FailureWidget(msg: state.msg);
      }
      if (state is FetchSellerBooksSucceed) {
        List<Item> list = state.bookList;

        return SizedBox(
          height: 112.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return   Container(
                height: 110.h,
                width: 70.w,
                margin: EdgeInsets.only(right: 10.w),
                child: CachedNetworkImage(
                  // width: 70.w, height: 115.h,
                  imageUrl: "${list[index].volumeInfo!.imageLinks!.thumbnail}",
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              );
            },
          ),
        );
      }

      return LoadingWidget();
    }



    ),
    ],
    );
    }

}
