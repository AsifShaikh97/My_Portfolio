import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.width < DeviceType.mobile.getMaxWidth()
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.helloIM,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? AppStyles.s16
              : AppStyles.s32.copyWith(color: AppColors.black),
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 6),
        Text(
          AppStrings.developerName,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? AppStyles.s24
              : AppStyles.s52,
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: context.width < DeviceType.mobile.getMaxWidth()
              ? context.width - 20
              : context.width / 1.5,
          child: Wrap(
            alignment: WrapAlignment.start,
            children: [
              Wrap(
                children: [
                  Text("🚀 Flutter Developer +4 years of experience |",
                    style: context.width < DeviceType.ipad.getMaxWidth()
                        ? AppStyles.s14
                        : AppStyles.s18,
                    textAlign: _getTextAlign(context.width),
                    softWrap: true,
                  ),
                  const SizedBox(width: 6,),
                  Text("💡 Turning Ideas into Interactive Apps |",
                    style: context.width < DeviceType.ipad.getMaxWidth()
                        ? AppStyles.s14
                        : AppStyles.s18,
                    textAlign: _getTextAlign(context.width),
                    softWrap: true,
                  ),
                ],
              ),
              Wrap(
                children: [
                  Text("Let's Create Something Awesome Together! | ",
                    style: context.width < DeviceType.ipad.getMaxWidth()
                        ? AppStyles.s14
                        : AppStyles.s18,
                    textAlign: _getTextAlign(context.width),
                    softWrap: true,
                  ),
                  Text("Contact me to bring your app dreams to life! 📱✨",
                    style: context.width < DeviceType.ipad.getMaxWidth()
                        ? AppStyles.s14
                        : AppStyles.s18,
                    textAlign: _getTextAlign(context.width),
                    softWrap: true,
                  ),
                  // iconText(AppAssets.mobile),
                ],
              ),

            ],
          ),
        ),
        const SizedBox(height: 0),
        // const IntoActions(),
      ],
    );
  }

  _getTextAlign(double screenWidth) {
    return screenWidth < DeviceType.mobile.getMaxWidth()
        ? TextAlign.center
        : TextAlign.start;
  }

  Widget iconText(icon){
    return Image.asset(icon,height: 22,width: 22,);
  }
}

