import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wallet_app/core/resource/value_manager.dart';
import 'package:wallet_app/core/utils/space_adder.dart';
import 'package:wallet_app/core/widgets/custom_back_button.dart';
import 'package:wallet_app/core/widgets/custom_circular_button.dart';
import 'package:wallet_app/features/home/presentation/components/profile_settings_list_view.dart';

import '../../../../core/resource/app_string.dart';
import '../../../../core/resource/assets_manager.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/font_manager.dart';

class ProfileSettingsViewBody extends StatelessWidget {
  const ProfileSettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p32.w),
        child: Column(children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: CustomBackButton(),
          ),
          addVerticalSpace(AppSize.s34),
          CircleAvatar(
            radius: AppSize.s48.r,
            foregroundImage: const AssetImage(
              ImageAssets.elforgani,
            ),
          ),
          addVerticalSpace(AppSize.s10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppString.elforgani,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontFamily: FontConstants.fontFamilyRubik),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    LineIcons.userEdit,
                    color: ColorManager.darkPurple2,
                  ))
            ],
          ),
          addVerticalSpace(AppSize.s50),
          const Expanded(child: ProfileSettingsListView()),
          const CustomCircularButton(iconPath: ImageAssets.deleteAccountIcon),
          addVerticalSpace(AppSize.s10),
          Text(
            AppString.deleteAccount,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontFamily: FontConstants.fontFamilyRubik,
                color: ColorManager.darkPurple2),
          ),
          addVerticalSpace(AppSize.s40),
        ]),
      ),
    );
  }
}
