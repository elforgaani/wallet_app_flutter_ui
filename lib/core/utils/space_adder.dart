import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height.h,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width.w,
  );
}
