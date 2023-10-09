import 'package:flutter/Material.dart';

import '../../../../core/resource/app_string.dart';
import '../../../../core/resource/assets_manager.dart';
import 'actions_bar_item.dart';

class ActionsBar extends StatelessWidget {
  const ActionsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ActionsBarItem(
          imagePath: ImageAssets.transfer,
          title: AppString.transfer,
        ),
        ActionsBarItem(
          imagePath: ImageAssets.payment,
          title: AppString.payment,
        ),
        ActionsBarItem(imagePath: ImageAssets.payout, title: AppString.payout),
        ActionsBarItem(imagePath: ImageAssets.topup, title: AppString.topup)
      ],
    );
  }
}
