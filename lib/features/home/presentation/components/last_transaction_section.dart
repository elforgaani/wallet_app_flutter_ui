import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/core/resource/app_string.dart';
import 'package:wallet_app/core/resource/font_manager.dart';
import 'package:wallet_app/core/utils/space_adder.dart';

import '../../../../core/resource/assets_manager.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/value_manager.dart';

class LastTransactionSection extends StatelessWidget {
  LastTransactionSection({super.key});
  final List<Widget> list = [
    const LastTransactionListItem(),
    const LastTransactionListItem(),
    const LastTransactionListItem()
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppString.lastTransaction,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontFamily: FontConstants.fontFamilyRubik),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  AppString.viewAll,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: ColorManager.purple),
                ))
          ],
        ),
        addVerticalSpace(AppSize.s25.h),
        Expanded(
          child: ListView.separated(
            itemCount: list.length,
            separatorBuilder: (context, index) =>
                addVerticalSpace(AppSize.s20.h),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return list[index];
            },
          ),
        )
      ],
    );
  }
}

class LastTransactionListItem extends StatelessWidget {
  const LastTransactionListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s40.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppSize.s40.h,
            width: AppSize.s40.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.r12.r),
            ),
            child: Image.asset(
              ImageAssets.netflix,
              fit: BoxFit.cover,
            ),
          ),
          addHorizontalSpace(AppSize.s15.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppString.netflix,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontFamily: FontConstants.fontFamilyRubik),
              ),
              Text(
                'Month Subscription',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
          const Spacer(),
          Text(
            '\$12',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontFamily: FontConstants.fontFamilyRubik,
                fontWeight: FontWeightManager.regular),
          )
        ],
      ),
    );
  }
}
