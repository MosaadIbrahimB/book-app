import 'package:book_app/feature/home/data/model/rate_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class RateWidget extends StatelessWidget {

 final RateModel ?rateModel;
  const RateWidget({super.key, this.rateModel});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          size: 15,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: 6.3.w),
        rateModel?.rate==null?  Text("4.8"): Text(rateModel!.rate.toString()),
        SizedBox(width: 5.w),
        rateModel?. count==null? Text(
          "(2390)",
          style: TextStyle(color: Colors.grey),
        ):Text(
         "(${ rateModel?.count})",
         style: TextStyle(color: Colors.grey),
       ),
      ],
    );
  }
}
