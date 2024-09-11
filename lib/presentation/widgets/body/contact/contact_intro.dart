import 'package:asif_shaikh_portfolio_flutter/core/utils/app_extensions.dart';
import 'package:asif_shaikh_portfolio_flutter/presentation/widgets/body/contact/social_medial_icons.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class ContactIntro extends StatelessWidget {
  const ContactIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.contactWithMe,
            style:context.width < DeviceType.ipad.getMaxWidth()
                ? AppStyles.s16.copyWith(color:AppColors.primaryColor) : AppStyles.s32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.contactMsg,
          style:context.width < DeviceType.ipad.getMaxWidth()
              ? AppStyles.s14
              :  AppStyles.s18,
          softWrap: true,
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.mailID,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? AppStyles.s14.copyWith(color: AppColors.primaryColor,fontWeight: FontWeight.w600)
              : AppStyles.s18.copyWith(color: AppColors.primaryColor),
          softWrap: true,
        ),
        const SizedBox(height: 8),
        const SocialMediaIcons(),
      ],
    );
  }
}
