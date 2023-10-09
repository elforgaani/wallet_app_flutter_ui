import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resource/assets_manager.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/value_manager.dart';

class CustomVerticalCard extends StatelessWidget {
  const CustomVerticalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s340.h,
      width: AppSize.s240.w,
      decoration: BoxDecoration(
        color: ColorManager.darkPurple1,
        borderRadius: BorderRadius.circular(AppRadius.r50.r),
      ),
      child: Image.asset(
        ImageAssets.cardVerticalForground,
        fit: BoxFit.fill,
      ),
    );
  }
}
