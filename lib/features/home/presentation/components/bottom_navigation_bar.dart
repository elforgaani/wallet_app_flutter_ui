import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wallet_app/core/resource/assets_manager.dart';
import 'package:wallet_app/core/resource/color_manager.dart';
import 'package:wallet_app/core/resource/style_manager.dart';

import '../../../../core/resource/app_string.dart';
import '../../../../core/resource/value_manager.dart';
import '../manager/navigation_cubit/navigation_cubit.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p24.w, vertical: AppPadding.p16.h),
      child: Container(
        height: AppSize.s80.h,
        decoration: BoxDecoration(
            color: ColorManager.darkPurple1,
            borderRadius: BorderRadius.circular(AppRadius.r30.r)),
        child: BlocBuilder<NavigationCubit, int>(
          builder: (context, index) {
            return SalomonBottomBar(
                currentIndex: index,
                onTap: (index) {
                  context.read<NavigationCubit>().indexChanged(index);
                },
                items: [
                  salomonNavBarItem(ImageAssets.wallet,
                      ImageAssets.walletActive, AppString.wallet),
                  salomonNavBarItem(ImageAssets.chart, ImageAssets.chartActive,
                      AppString.chart),
                  salomonNavBarItem(ImageAssets.notification,
                      ImageAssets.notificationActive, AppString.notification),
                  salomonNavBarItem(ImageAssets.settings,
                      ImageAssets.settingsAvtive, AppString.settings),
                ]);
          },
        ),
      ),
    );
  }

  SalomonBottomBarItem salomonNavBarItem(
      String iconPath, String activeIconPath, String title) {
    return SalomonBottomBarItem(
        activeIcon: Image.asset(activeIconPath),
        icon: Image.asset(iconPath),
        title: Text(title, style: getMediumStyle(color: ColorManager.white)),
        unselectedColor: ColorManager.darkPurple1,
        selectedColor: ColorManager.white);
  }
}
