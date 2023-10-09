import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resource/assets_manager.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/value_manager.dart';

class CustomHorizonalCard extends StatelessWidget {
  const CustomHorizonalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s240.h,
      width: AppSize.s310.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppRadius.r50.r,
          ),
          color: ColorManager.darkPurple1),
      child: Image.asset(
        ImageAssets.cardHorizontalForground,
        fit: BoxFit.fill,
      ),
    );
  }
}
