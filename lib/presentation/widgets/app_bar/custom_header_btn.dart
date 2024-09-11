import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/app_extensions.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_styles.dart';
import '../../blocs/home_bloc/home_bloc.dart';

class CustomHeaderBtn extends StatelessWidget {
  const CustomHeaderBtn({super.key, required this.headerIndex});

  final int headerIndex;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(headerIndex));
      },
      style: TextButton.styleFrom(
        textStyle: AppStyles.s16,
        foregroundColor: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 20,
        ),
        child: Column(
          children: [
            Text(
              AppBarHeaders.values[headerIndex].getString(),
            ),
            // context.read<HomeBloc>().appBarHeaderIndex == headerIndex?
            _getBottomDivider(
              currentIndex: context.read<HomeBloc>().appBarHeaderIndex,
              headerIndex: headerIndex,
            )
          ],
        ),
      ),
    );
  }

  Widget _getBottomDivider({required currentIndex, required int headerIndex}) {
    if (currentIndex == headerIndex) {
     return Container(
        margin: const EdgeInsets.only(top: 4),
        height: 2, // Adjust the height of the divider
        width: AppBarHeaders.values[headerIndex].getString().length>4? 60:40,   // Adjust the width of the divider
        color: AppColors.primaryColor,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
