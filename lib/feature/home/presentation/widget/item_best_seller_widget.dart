import 'package:book_app/core/utils/app_consrain.dart';
import 'package:book_app/feature/home/data/model/book_model/item.dart';
import 'package:book_app/feature/home/presentation/widget/price_and_rate_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemBestSellerWidget extends StatelessWidget {
  const ItemBestSellerWidget({super.key, this.item});

  final Item? item;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var info = item!.volumeInfo;
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.only(bottom: 20.h),
      width: 298.w,
      height: 120.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CachedNetworkImage(
            width: 70.w, height: 115.h,
            imageUrl: "${info!.imageLinks!.thumbnail}",
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*.75,
                child: Text(info.title??AppConstrain.harry, style: theme.textTheme.displayMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                softWrap: true,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                info.authors![0] ,
                style: theme.textTheme.titleMedium,
              ),
              Expanded(child: SizedBox()),
              PriceAndRateWidget()
            ],
          )
        ],
      ),
    );
  }
}
// Image.asset("assets/images/harry.png", width: 70.w, height: 115.h),