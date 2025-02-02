import 'package:book_app/config/route/app_route.dart';
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
            Navigator.pushNamedAndRemoveUntil(context, AppRoute.homeScreen,(route) => false);
          },
          icon: Icon(
            Icons.close,
            color: Colors.white,
            size: 35,
          ),
        ),
        Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
          size: 35,
        ),
      ],
    );
  }
}
