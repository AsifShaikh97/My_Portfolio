import 'package:asif_shaikh_portfolio_flutter/core/utils/app_extensions.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../data/models/project.dart';
import 'package:universal_html/html.dart' as html;
class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: context.width < DeviceType.ipad.getMaxWidth()
              ?MediaQuery.sizeOf(context).width:MediaQuery.sizeOf(context).width/4,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.26),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 1),
              ),
            ],
            color: AppColors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Image.asset(project.imageUrl,height: 55,width: 55,),
                  const SizedBox(height: 18,width: 8,),
                  Expanded(
                    child: Text(
                      project.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:context.width < DeviceType.ipad.getMaxWidth()
                          ? AppStyles.s14.copyWith(color: AppColors.primaryColor,  fontWeight: FontWeight.w600,)
                          : AppStyles.s18.copyWith(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              AutoSizeText(
                project.description,
                style: AppStyles.s14,
                // minFontSize: 10,
              ),
              const SizedBox(height: 16),
              CustomButton(
                width: context.width < DeviceType.ipad.getMaxWidth()
                    ?MediaQuery.sizeOf(context).width/3:MediaQuery.sizeOf(context).width/12,
                image: AppAssets.playStoreLogo,
                label: 'Play store',
                borderColor: AppColors.black,
                lableColor: AppColors.black,
                onPressed: () {
                  html.window.open(project.googlePlay!, '_blank');
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
