import 'package:flutter/Material.dart';

import '../../../../core/resource/color_manager.dart';

class InfoSectionColumn extends StatelessWidget {
  const InfoSectionColumn({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          description,
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: ColorManager.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
