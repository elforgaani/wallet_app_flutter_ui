import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/core/resource/font_manager.dart';
import 'package:wallet_app/core/utils/space_adder.dart';
import 'package:wallet_app/features/auth/presentation/components/sign_up_form.dart';
import 'package:wallet_app/features/auth/presentation/components/social_media_buttons_row.dart';

import '../../../../core/resource/app_string.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/value_manager.dart';
import '../../../../core/utils/route_manager.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          addVerticalSpace(AppSize.s30),
          Text(
            AppString.signUpTitle,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontFamily: FontConstants.fontFamilyRubik),
            textAlign: TextAlign.center,
          ),
          addVerticalSpace(AppSize.s60),
          Text(
            AppString.signUpWith,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          addVerticalSpace(AppSize.s20),
          const SocialMediaButtonsRow(),
          addVerticalSpace(AppSize.s36),
          const SignUpForm(),
          addVerticalSpace(AppSize.s60),
          ElevatedButton(
              style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                  fixedSize: MaterialStatePropertyAll(
                      Size(AppSize.s190.w, AppSize.s60.h)),
                  backgroundColor:
                      const MaterialStatePropertyAll(ColorManager.darkPurple2)),
              onPressed: () => Navigator.pushNamed(context, Routes.addCard),
              child: Text(
                AppString.register,
                style: Theme.of(context).textTheme.labelLarge,
              )),
          addVerticalSpace(AppSize.s20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppString.haveAccount,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.logIn);
                  },
                  child: const Text(
                    AppString.login,
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
