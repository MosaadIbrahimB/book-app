import 'package:book_app/config/route/app_route.dart';
import 'package:book_app/feature/home/presentation/widget/item_best_seller_widget.dart';
import 'package:book_app/feature/home/presentation/widget/item_book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50.h),
        TextField(
          onChanged: (value) {},
          style: TextStyle(color: Colors.white, fontFamily: "montserrat"),
          decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SvgPicture.asset(
                  "assets/images/logo.svg",
                  width: 75.w,
                  height: 16.h,
                ),
              ),
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              border: OutlineInputBorder()),
        ),
        SizedBox(height: 42.h),
        SizedBox(
            height: 224.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => ItemBookWidget(width: 150.w,height: 224.h,),
            )),
        SizedBox(height: 40.h),
        Text(
          "Best Seller",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 15.h),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            padding: EdgeInsets.symmetric(horizontal: 8).w,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, AppRoute.bookDetailsScreen);
                  },
                  child: ItemBestSellerWidget());
            },
          ),
        )
      ],
    );
  }
}
