import 'package:flutter/Material.dart';
import 'package:line_icons/line_icon.dart';

import '../../../../core/resource/app_string.dart';
import '../../../../core/resource/value_manager.dart';
import '../../../../core/utils/space_adder.dart';
import 'custom_text_field.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomTextField(
          hintText: AppString.username,
          prefixIcon: const LineIcon.user(),
        ),
        addVerticalSpace(AppSize.s20),
        CustomTextField(
          hintText: AppString.password,
          prefixIcon: const LineIcon.key(),
          suffixIcon: const LineIcon.eyeSlash(),
        )
      ],
    ));
  }
}
