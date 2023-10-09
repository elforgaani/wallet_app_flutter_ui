import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resource/color_manager.dart';
import '../resource/value_manager.dart';

class CustomCircularButton extends StatelessWidget {
  const CustomCircularButton({
    super.key,
    required this.iconPath,
  });
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: AppSize.s60.h,
        width: AppSize.s60.w,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: ColorManager.lightgrey)),
        child: Image.asset(iconPath),
      ),
    );
  }
}
