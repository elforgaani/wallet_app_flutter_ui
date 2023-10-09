import 'package:flutter/material.dart';

import 'package:wallet_app/core/resource/color_manager.dart';
import 'package:wallet_app/core/resource/value_manager.dart';
import 'package:wallet_app/core/utils/space_adder.dart';

import '../../../../core/resource/app_string.dart';
import '../../../../core/resource/font_manager.dart';
import 'notification_card.dart';

class NotificationsViewBody extends StatelessWidget {
  const NotificationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Text(
                AppString.notification,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontFamily: FontConstants.fontFamilyRubik),
              ),
              addVerticalSpace(AppSize.s40),
              Text(
                AppString.newWord,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: ColorManager.blackPurple),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: ((context, index) {
                    return const NotificationCard();
                  })),
              addVerticalSpace(AppSize.s10),
              Text(
                AppString.recent,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: ColorManager.blackPurple),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: ((context, index) {
                    return const NotificationCard();
                  }))
            ],
          ),
        )
      ],
    );
  }
}
