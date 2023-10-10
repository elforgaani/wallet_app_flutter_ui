import 'package:flutter/Material.dart';
import 'package:wallet_app/core/resource/assets_manager.dart';
import 'package:wallet_app/core/utils/route_manager.dart';

import '../../../../core/resource/app_string.dart';
import '../../../../core/resource/value_manager.dart';
import '../../../../core/utils/space_adder.dart';
import 'settings_list_view_item.dart';

class SettingListView extends StatelessWidget {
  const SettingListView({
    super.key,
  });
  final List<Widget> settingsListItems = const [
    SettingsListViewItem(
      title: AppString.profile,
      iconPath: ImageAssets.profileIcon,
      nextViewPath: Routes.profileSettings,
    ),
    SettingsListViewItem(
        title: AppString.notification, iconPath: ImageAssets.notificatonIcon),
    SettingsListViewItem(
        title: AppString.yourWallet, iconPath: ImageAssets.walletIcon),
    SettingsListViewItem(
        title: AppString.loginSettings,
        iconPath: ImageAssets.loginSettingsIcon),
    SettingsListViewItem(
        title: AppString.serviceCenter, iconPath: ImageAssets.serviceCenterIcon)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return settingsListItems[index];
        },
        separatorBuilder: ((context, index) {
          return addVerticalSpace(AppSize.s30);
        }),
        itemCount: settingsListItems.length);
  }
}
