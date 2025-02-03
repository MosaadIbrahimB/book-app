import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
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
    );
  }
}
