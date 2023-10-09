import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';

import '../resource/color_manager.dart';
import '../resource/value_manager.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          LineIcons.chevronCircleLeft,
          size: AppSize.s36.sp,
          color: ColorManager.darkPurple2,
        ));
  }
}
