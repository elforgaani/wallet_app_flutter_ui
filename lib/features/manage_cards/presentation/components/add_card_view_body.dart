import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/core/resource/app_string.dart';
import 'package:wallet_app/core/resource/color_manager.dart';
import 'package:wallet_app/core/resource/font_manager.dart';
import 'package:wallet_app/core/resource/value_manager.dart';
import 'package:wallet_app/core/utils/route_manager.dart';
import 'package:wallet_app/core/utils/space_adder.dart';

import '../../../../core/widgets/custom_back_button.dart';
import 'custom_vertical_card.dart';

class AddCardViewBody extends StatelessWidget {
  const AddCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p32.w, vertical: AppPadding.p40.h),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: CustomBackButton(),
          ),
          addVerticalSpace(AppSize.s60.h),
          TextButton(
              onPressed: () => Navigator.pushNamed(context, Routes.home),
              child: Text(
                AppString.addCard,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontFamily: FontConstants.fontFamilyRubik,
                    color: ColorManager.blackPurple,
                    fontSize: FontSize.s24),
              )),
          addVerticalSpace(AppSize.s60),
          const CustomVerticalCard(),
          addVerticalSpace(AppSize.s70),
          Text(
            AppString.addNewCard,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: ColorManager.black,
                ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    )));
  }
}
