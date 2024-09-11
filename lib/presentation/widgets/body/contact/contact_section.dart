import 'package:asif_shaikh_portfolio_flutter/core/utils/app_extensions.dart';
import 'package:asif_shaikh_portfolio_flutter/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import 'contact_intro.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: context.width > DeviceType.ipad.getMaxWidth()
          ?  Column(
            children: [
               const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ContactIntro(),
                    ),
                  ],
                ),
              const Divider(),
              const SizedBox(height: 20),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Developed with Flutter by Asif Shaikh',style: AppStyles.s18.copyWith(color:AppColors.primaryColor),),
                  ],
                ),
              )
            ],
          )
          :  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               const ContactIntro(),
                const  Divider(),
                const SizedBox(height: 20),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Developed with Flutter by Asif Shaikh',style: AppStyles.s16.copyWith(color:AppColors.primaryColor),),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
