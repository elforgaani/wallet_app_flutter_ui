import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';

import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/value_manager.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shadowColor: ColorManager.darkPurple2.withOpacity(0.3),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.r20.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppSize.s20.w, vertical: AppSize.s10.h),
        child: SizedBox(
          height: AppSize.s90.h,
          width: AppSize.s310.w,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '29 June 2021, 7.14 PM',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text(
                      'You received Rp 100.000 from\nAlexandr Gibson Jogja',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: ColorManager.blackPurple,
                          ),
                    ),
                    Text(
                      'Pay debt',
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                ),
                const LineIcon.arrowCircleDown()
              ]),
        ),
      ),
    );
  }
}
