import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/value_manager.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final double? width;
  final String? Function(String?)? validator;
  final bool obsecure;

  const CustomTextField({
    required this.hintText,
    required this.prefixIcon,
    this.textEditingController,
    this.validator,
    this.obsecure = false,
    this.suffixIcon,
    this.width = 330,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width!.w,
      child: TextFormField(
        obscureText: obsecure,
        validator: validator,
        controller: textEditingController,
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: ColorManager.blackPurple),
        decoration: InputDecoration(
            filled: true,
            fillColor: ColorManager.darkGrey.withOpacity(0.1),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(AppPadding.p12),
              child: prefixIcon,
            ),
            hintText: hintText,
            suffixIcon: suffixIcon),
      ),
    );
  }
}
