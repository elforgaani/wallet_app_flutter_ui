import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resource/app_string.dart';
import '../../../../core/resource/assets_manager.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/value_manager.dart';
import '../../../../core/utils/space_adder.dart';

class SocialMediaButtonsRow extends StatelessWidget {
  const SocialMediaButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                fixedSize: MaterialStatePropertyAll(
                    Size(AppSize.s130.w, AppSize.s60.h))),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(ImageAssets.googleLogo),
                Text(
                  AppString.google,
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            )),
        addHorizontalSpace(AppSize.s20),
        ElevatedButton(
            style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                backgroundColor:
                    const MaterialStatePropertyAll(ColorManager.blue),
                fixedSize: MaterialStatePropertyAll(
                    Size(AppSize.s130.w, AppSize.s60.h))),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(ImageAssets.facebookLogo),
                Text(
                  AppString.facebook,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: ColorManager.white),
                )
              ],
            ))
      ],
    );
  }
}
