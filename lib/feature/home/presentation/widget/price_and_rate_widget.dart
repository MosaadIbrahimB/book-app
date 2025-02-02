import 'package:book_app/feature/home/presentation/widget/rate_widget.dart';
import 'package:flutter/material.dart';
class PriceAndRateWidget extends StatelessWidget {
  const PriceAndRateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("19 \$"),
        Expanded(child: SizedBox()),
        RateWidget()
      ],
    );
  }
}
