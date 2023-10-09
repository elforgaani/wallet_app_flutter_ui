import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/value_manager.dart';
import '../../../../core/utils/space_adder.dart';
import 'custom_button.dart';

class ActionsBarItem extends StatelessWidget {
  const ActionsBarItem({
    super.key,
    required this.imagePath,
    required this.title,
  });
  final String imagePath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          imagePath: imagePath,
        ),
        addVerticalSpace(AppSize.s16.h),
        Text(title,
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: ColorManager.purple))
      ],
    );
  }
}
