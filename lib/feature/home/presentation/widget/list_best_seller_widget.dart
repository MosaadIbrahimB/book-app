import 'package:book_app/config/route/app_go_router.dart';
import 'package:book_app/config/route/app_route.dart';
import 'package:book_app/core/widget/failure_widget.dart';
import 'package:book_app/core/widget/loading_widget.dart';
import 'package:book_app/feature/home/data/model/book_model/item.dart';
import 'package:book_app/feature/home/presentation/control/fetch_feature_book_cubit/fetch_feature_book_use_cubit.dart';
import 'package:book_app/feature/home/presentation/control/fetch_seller_books_cubit/fetch_seller_books_cubit.dart';
import 'package:book_app/feature/home/presentation/control/fetch_seller_books_cubit/fetch_seller_books_state.dart';
import 'package:book_app/feature/home/presentation/widget/item_best_seller_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListBestSellerWidget extends StatelessWidget {
  const ListBestSellerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSellerBooksCubit, FetchSellerBooksState>(
      builder: (context, state) {
        if (state is FetchSellerBooksSucceed) {
          List<Item> list = state.bookList;
          return SliverList.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    FetchFeatureBookCubit.get(context)
                        .getChangeItem(list[index]);
                    context.push(AppGoRouter.bookDetailsScreen);
                  },
                  child: ItemBestSellerWidget(
                    item: list[index],
                  ));
            },
          );
        }
        if (state is FetchSellerBooksFailure) {
          return SliverToBoxAdapter(child: FailureWidget(msg: state.msg));
        }
        return SliverToBoxAdapter(child: LoadingWidget());
      },
    );
  }
}
