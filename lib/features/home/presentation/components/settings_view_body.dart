import 'package:flutter/material.dart';
import 'package:wallet_app/core/resource/app_string.dart';
import 'package:wallet_app/core/resource/color_manager.dart';
import 'package:wallet_app/core/resource/font_manager.dart';
import 'package:wallet_app/core/resource/value_manager.dart';
import 'package:wallet_app/core/utils/space_adder.dart';

import '../../../../core/resource/assets_manager.dart';
import '../../../../core/widgets/custom_circular_button.dart';
import 'settings_list_view.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        addVerticalSpace(AppSize.s50),
        Text(
          AppString.settings,
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(fontFamily: FontConstants.fontFamilyRubik),
        ),
        addVerticalSpace(AppSize.s50),
        const Expanded(child: SettingListView()),
        const CustomCircularButton(
          iconPath: ImageAssets.logoutIcon,
        ),
        addVerticalSpace(AppSize.s10),
        Text(
          AppString.logout,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontFamily: FontConstants.fontFamilyRubik,
              color: ColorManager.darkPurple2),
        )
      ],
    );
  }
}
