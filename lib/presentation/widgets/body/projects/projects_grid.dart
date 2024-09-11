import 'package:flutter/material.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'project_item.dart';

class ProjectsGrid extends StatelessWidget {
  const ProjectsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return
      context.width < DeviceType.ipad.getMaxWidth()
        ?Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
              AppConstants.projects.length,
                  (index) => ProjectItem(
                project: AppConstants.projects[index],
              ))):
      Wrap(
        alignment: WrapAlignment.start,
        children: List.generate(
            AppConstants.projects.length,
                (index) => ProjectItem(
                  project: AppConstants.projects[index],
                )));
  }

}
