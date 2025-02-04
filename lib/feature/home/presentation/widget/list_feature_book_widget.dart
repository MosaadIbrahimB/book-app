import 'package:book_app/core/widget/failure_widget.dart';
import 'package:book_app/core/widget/loading_widget.dart';
import 'package:book_app/core/widget/succeed_widget.dart';
import 'package:book_app/feature/home/data/model/book_model/item.dart';
import 'package:book_app/feature/home/presentation/control/fetch_feature_book_cubit/fetch_feature_book_use_cubit.dart';
import 'package:book_app/feature/home/presentation/control/fetch_feature_book_cubit/fetch_feature_book_use_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListFeatureBookWidget extends StatelessWidget {
  const ListFeatureBookWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeatureBookCubit, FetchFeatureBookState>(
      builder: (context, state) {
        if (state is FetchFeatureBookSucceed) {
          List<Item> list = state.bookList;
          return SucceedWidget(list: list);
        }
        if (state is FetchFeatureBookFailure) {
          return FailureWidget(msg: state.msg);
        }
        return LoadingWidget();
      },
    );
  }
}

