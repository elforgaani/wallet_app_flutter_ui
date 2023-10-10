import 'package:flutter/Material.dart';
import 'package:wallet_app/features/home/presentation/components/profile_settings_list_view_item.dart';

import '../../../../core/resource/app_string.dart';
import '../../../../core/resource/value_manager.dart';
import '../../../../core/utils/space_adder.dart';

class ProfileSettingsListView extends StatelessWidget {
  const ProfileSettingsListView({
    super.key,
  });
  final List<Widget> profileSettingsItems = const [
    ProfileSettingsListViewItem(title: AppString.connectedAccounts),
    ProfileSettingsListViewItem(title: AppString.privacyAndSecurity),
    ProfileSettingsListViewItem(title: AppString.loginSettings),
    ProfileSettingsListViewItem(title: AppString.serviceCenter),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: ((context, index) {
          return profileSettingsItems[index];
        }),
        separatorBuilder: ((context, index) => addVerticalSpace(AppSize.s30)),
        itemCount: profileSettingsItems.length);
  }
}
