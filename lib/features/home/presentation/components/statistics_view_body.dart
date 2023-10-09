import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/core/resource/app_string.dart';
import 'package:wallet_app/core/resource/color_manager.dart';
import 'package:wallet_app/core/resource/font_manager.dart';
import 'package:wallet_app/core/resource/value_manager.dart';
import 'package:wallet_app/core/utils/space_adder.dart';
import 'package:wallet_app/features/home/presentation/components/last_transaction_section.dart';

class StatisticsViewBody extends StatelessWidget {
  const StatisticsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          AppString.incomeStates,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontFamily: FontConstants.fontFamilyRubik),
        ),
      ),
      addVerticalSpace(AppSize.s15),
      SizedBox(
        height: AppSize.s220.h,
        width: AppSize.s300.w,
        child: const Placeholder(),
      ),
      addVerticalSpace(AppSize.s50),
      Text(
        AppString.totoaBalance,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      Text(
        '\$${AppString.amount}',
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
            fontFamily: FontConstants.fontFamilyRubik,
            color: ColorManager.purple,
            fontSize: FontSize.s36),
      ),
      addVerticalSpace(AppSize.s50),
      Expanded(child: LastTransactionSection())
    ]);
  }
}
