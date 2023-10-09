import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/core/resource/app_string.dart';
import 'package:wallet_app/core/resource/font_manager.dart';
import 'package:wallet_app/core/resource/value_manager.dart';
import 'package:wallet_app/core/utils/space_adder.dart';
import 'package:wallet_app/features/home/presentation/components/last_transaction_section.dart';

import '../../../../core/resource/assets_manager.dart';
import 'actions_bar.dart';
import 'info_section.dart';

class WalletViewBody extends StatelessWidget {
  const WalletViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.wallet,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                fontFamily: FontConstants.fontFamilyRubik,
                                letterSpacing: 0.5),
                      ),
                      Text(
                        AppString.active,
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                  CircleAvatar(
                    foregroundImage: const AssetImage(ImageAssets.elforgani),
                    radius: AppRadius.r30.r,
                  )
                ],
              ),
              addVerticalSpace(AppSize.s40),
              const InfoSection(),
              addVerticalSpace(AppSize.s40.h),
              const ActionsBar(),
              addVerticalSpace(AppSize.s40.h),
            ],
          ),
        ),
        SliverFillRemaining(
          child: LastTransactionSection(),
        )
      ],
    );
  }
}
