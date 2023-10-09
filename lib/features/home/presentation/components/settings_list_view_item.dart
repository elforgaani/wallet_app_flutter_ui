import 'package:flutter/Material.dart';

import '../../../../core/resource/color_manager.dart';

class SettingsListViewItem extends StatelessWidget {
  const SettingsListViewItem({
    super.key,
    required this.title,
    required this.iconPath,
    this.nextViewPath,
  });
  final String title;
  final String iconPath;
  final String? nextViewPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (nextViewPath != null) {
          Navigator.pushNamed(context, nextViewPath!);
        }
      },
      child: ListTile(
        leading: Image.asset(iconPath),
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
