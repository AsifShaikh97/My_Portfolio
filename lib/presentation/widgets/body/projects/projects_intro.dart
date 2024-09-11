import 'package:asif_shaikh_portfolio_flutter/core/utils/app_colors.dart';
import 'package:asif_shaikh_portfolio_flutter/core/utils/app_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class ProjectsIntro extends StatelessWidget {
  const ProjectsIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.featuredProjects,
            style:  context.width < DeviceType.ipad.getMaxWidth()
                ? AppStyles.s16.copyWith(color:AppColors.primaryColor)
                : AppStyles.s32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.projectsMsg,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? AppStyles.s14
              : AppStyles.s18,
          softWrap: true,
        ),
      ],
    );
  }
}
