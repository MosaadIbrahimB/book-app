import 'package:book_app/config/route/app_route.dart';
import 'package:book_app/feature/home/presentation/control/fetch_feature_book_cubit/fetch_feature_book_use_cubit.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: (){
            Navigator.pop(context);
            FetchFeatureBookCubit.get(context).getFeatureBook();
          },
          icon: Icon(
            Icons.close,
            color: Colors.white,
            size: 30,
          ),
        ),
        Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
          size: 30,
        ),
      ],
    );
  }
}
