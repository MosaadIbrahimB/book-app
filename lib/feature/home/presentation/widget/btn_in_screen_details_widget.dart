import 'package:book_app/feature/home/presentation/widget/btn_price_free_view_widget.dart';
import 'package:flutter/material.dart';
class BtnInScreenDetailsWidget extends StatelessWidget {
  const BtnInScreenDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BtnPriceFreeViewWidget(
          data: "Free",
        ),
        BtnPriceFreeViewWidget(
          data: "Preview",
          isRight: true,
          colorBack: Color(0xffEF8262),
          colorFont: Colors.white,
        ),
      ],
    );
  }
}
