import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/app_extensions.dart';
import '../../blocs/home_bloc/home_bloc.dart';
import '../app_bar/vertical_headers_builder.dart';
import 'contact/contact_section.dart';
import 'intro/intro_section.dart';
import 'projects/projects_section.dart';
import 'techstack/techstack_section.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final ScrollController _controller = ScrollController();
  final introKey = GlobalKey();
  final projectKey = GlobalKey();
  final techKey = GlobalKey();
  final contactKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initListenerForInteractWithHeaderIndex();
    });
  }

  void _initListenerForInteractWithHeaderIndex() {
    double introHeight = introKey.currentContext!.size!.height;
    double projectHeight = projectKey.currentContext!.size!.height;
    double techHeight = techKey.currentContext!.size!.height;
    _controller.addListener(() {
      double controllerHeight = _controller.offset;
      if (_controller.position.extentAfter == 0.0) {
        context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(2));
      } else if (controllerHeight < introHeight) {
        context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(0));
      } else if (controllerHeight < (introHeight + projectHeight)) {
        context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(1));
      } else if (controllerHeight < (introHeight + projectHeight+ techHeight)) {
        context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(1));
      }
      else {
        context.read<HomeBloc>().add(ChangeAppBarHeadersColorByColor(2));
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is AppBarHeadersIndexChanged) {
          Navigator.of(context).maybePop();
          const duration = Duration(milliseconds: 300);
          if (state.index == 0) {
            Scrollable.ensureVisible(
              introKey.currentContext!,
              duration: duration,
            );
          }
          if (state.index == 1) {
            Scrollable.ensureVisible(
              projectKey.currentContext!,
              duration: duration,
            );
          }
          if (state.index == 2) {
            Scrollable.ensureVisible(
              contactKey.currentContext!,
              duration: duration,
            );
          }
        }
      },
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * .08),
            child: SingleChildScrollView(
              controller: _controller,
              child: Column(
                children: [
                  IntroSection(key: introKey),
                  ProjectsSection(key: projectKey),
                  TechStackWidget(key: techKey),
                  ContactSection(key: contactKey),
                ],
              ),
            ),
          ),
          const VerticalHeadersBuilder(),
        ],
      ),
    );
  }
}
