import 'package:book_app/feature/home/data/rate_model.dart';
import 'package:book_app/feature/home/presentation/widget/rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceAndRateWidget extends StatelessWidget {
final  RateModel ? rateModel;
  const PriceAndRateWidget({
    super.key, this.rateModel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*.6,
      // color: Colors.red,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Text("Free ",style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Colors.white
          ),),
          RateWidget( rateModel: rateModel,)
        ],
      ),
    );
  }
}
