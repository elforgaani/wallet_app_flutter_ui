import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/core/utils/route_manager.dart';

import '../../../../core/resource/app_string.dart';
import '../../../../core/resource/assets_manager.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/value_manager.dart';
import 'info_section_column.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.cardDetails),
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(ImageAssets.walletBackground),
              fit: BoxFit.cover),
          color: ColorManager.darkPurple2,
          borderRadius: BorderRadius.circular(AppRadius.r50.r),
        ),
        height: AppSize.s140.h,
        width: AppSize.s310.w,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InfoSectionColumn(
                title: AppString.balance, description: '\$${AppString.amount}'),
            InfoSectionColumn(
                title: AppString.card, description: AppString.bank)
          ],
        ),
      ),
    );
  }
}
