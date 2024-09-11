import 'package:asif_shaikh_portfolio_flutter/core/utils/app_extensions.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/app_image_widget.dart';

class TechstackWidget extends StatelessWidget {
  const TechstackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tech stacks',
              style: context.width < DeviceType.ipad.getMaxWidth()
                  ? AppStyles.s16.copyWith(color:AppColors.primaryColor)
                  :  AppStyles.s32,
            ),
            const SizedBox(height: 8),
            Text(
              // "I have attained expertise in an array of cutting-edge tech stacks empowering me to craft seamless and innovative solutions.",
             "I have attained expertise in an array of cutting-edge tech stacks, combining my proficiency in Flutter with a solid foundation in Android native development. During my 6 months of Android native experience, I specialized in integrating APIs & various third-party libraries.",
              style: context.width < DeviceType.ipad.getMaxWidth()
                  ? AppStyles.s14
                  : AppStyles.s18,
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                context.width < DeviceType.mobile.getMaxWidth()
                    ? Wrap(
                  alignment: WrapAlignment.center,
                        children: List.generate(
                            7,
                            (index) => techStackCircle(
                                techStackImages.values.toList()[index])))
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            7,
                            (index) => techStackCircle(
                                techStackImages.values.toList()[index]))),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget techStackCircle(String imagePath) {
    return Container(
      margin: const EdgeInsets.all(6),
      height: 54,
      width: 54,
      padding: const EdgeInsets.all(8),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.primaryColor),
      child: AppImageWidget(
        path: imagePath,
      ),
    );
  }
}
