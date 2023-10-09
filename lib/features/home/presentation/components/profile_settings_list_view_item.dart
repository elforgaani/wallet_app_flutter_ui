import 'package:flutter/Material.dart';

import '../../../../core/resource/color_manager.dart';

class ProfileSettingsListViewItem extends StatelessWidget {
  const ProfileSettingsListViewItem({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: ColorManager.blackPurple),
        ),
        trailing: const Icon(Icons.chevron_right_rounded),
      ),
    );
  }
}
