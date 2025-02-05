import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemBookWidget extends StatelessWidget {
  final double width;
  final double height;
  final String? imgUrl;
  const ItemBookWidget(
      {super.key, required this.width, required this.height, this.imgUrl});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.w),
      width: width,
      height: height,
     child: ClipRRect(
       borderRadius: BorderRadius.circular(15),
       child: CachedNetworkImage(
         fit: BoxFit.fill,
         imageUrl: imgUrl??"https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png",
         progressIndicatorBuilder: (context, url, downloadProgress) =>
             Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
         errorWidget: (context, url, error) => Icon(Icons.error),
       ),
     ),

    );
  }
}
// decoration: BoxDecoration(
// color: Colors.red,
// borderRadius: BorderRadius.circular(15),
// image: DecorationImage(
// fit: BoxFit.fill,
// image:imgUrl==null? AssetImage("assets/images/lion.png"):NetworkImage(imgUrl!),
// ),
// ),