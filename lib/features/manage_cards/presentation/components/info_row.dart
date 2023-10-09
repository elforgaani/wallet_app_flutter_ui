import 'package:flutter/Material.dart';

import '../../../../core/resource/color_manager.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.title,
    required this.info,
  });
  final String title;
  final String info;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        Text(
          info,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: ColorManager.black),
        )
      ],
    );
  }
}
