import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/value_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.imagePath,
  });
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 2,
            fixedSize: Size(AppSize.s40.w, AppSize.s60.h),
            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: ColorManager.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.r20.r))),
        onPressed: () {},
        child: Image.asset(imagePath));
  }
}
