import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/core/resource/value_manager.dart';
import 'package:wallet_app/core/utils/space_adder.dart';
import 'package:wallet_app/core/widgets/custom_back_button.dart';

import '../../../../core/resource/app_string.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/font_manager.dart';
import 'custom_horizontal_card.dart';
import 'info_row.dart';

class CardDetailsViewBody extends StatelessWidget {
  const CardDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p32.w,
        ),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: CustomBackButton(),
            ),
            addVerticalSpace(AppSize.s25),
            Text(
              AppString.cardDetails,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontFamily: FontConstants.fontFamilyRubik,
                  color: ColorManager.blackPurple,
                  fontSize: FontSize.s24),
            ),
            addVerticalSpace(AppSize.s50),
            const CustomHorizonalCard(),
            addVerticalSpace(AppSize.s50),
            SizedBox(
              height: AppSize.s200.h,
              width: AppSize.s220.w,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoRow(title: AppString.name, info: AppString.elforgani),
                  InfoRow(title: AppString.bankName, info: AppString.bank),
                  InfoRow(title: AppString.account, info: AppString.cardNumber),
                  InfoRow(title: AppString.status, info: AppString.active),
                  InfoRow(title: AppString.valid, info: AppString.cardDate)
                ],
              ),
            ),
            addVerticalSpace(AppSize.s50),
            TextButton(
                onPressed: () {},
                child: Text(
                  AppString.deleteCard,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: ColorManager.darkPurple2,
                      fontFamily: FontConstants.fontFamilyRubik),
                ))
          ],
        ),
      ),
    );
  }
}
