import 'package:book_app/config/route/app_route.dart';
import 'package:book_app/core/widget/failure_widget.dart';
import 'package:book_app/core/widget/loading_widget.dart';
import 'package:book_app/core/widget/succeed_widget.dart';
import 'package:book_app/feature/home/data/model/book_model/item.dart';
import 'package:book_app/feature/home/presentation/control/fetch_feature_book_cubit/fetch_feature_book_use_cubit.dart';
import 'package:book_app/feature/home/presentation/control/fetch_seller_books_cubit/fetch_seller_books_cubit.dart';
import 'package:book_app/feature/home/presentation/control/fetch_seller_books_cubit/fetch_seller_books_state.dart';
import 'package:book_app/feature/home/presentation/widget/item_best_seller_widget.dart';
import 'package:book_app/feature/home/presentation/widget/list_best_seller_widget.dart';
import 'package:book_app/feature/home/presentation/widget/list_feature_book_widget.dart';
import 'package:book_app/feature/home/presentation/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              ListFeatureBookWidget(),
              SizedBox(height: 40.h),
              Text(
                "Best Seller",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 15.h),
            ],
          ),
        ),
        ListBestSellerWidget(),
      ],
    );
  }
}



