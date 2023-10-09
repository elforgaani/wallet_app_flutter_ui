import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/core/resource/value_manager.dart';
import 'package:wallet_app/core/utils/constants.dart';
import 'package:wallet_app/features/home/presentation/manager/navigation_cubit/navigation_cubit.dart';
import 'package:wallet_app/features/home/presentation/views/notifications_view.dart';
import 'package:wallet_app/features/home/presentation/views/settings_view.dart';
import 'package:wallet_app/features/home/presentation/views/statistics_view.dart';
import 'package:wallet_app/features/home/presentation/views/wallet_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final _pageController = PageController(initialPage: 0);
  final List<Widget> pages = const [
    WalletView(),
    StatisticsView(),
    NotificationsView(),
    SettingsView(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p33.w,
      ),
      child: BlocListener<NavigationCubit, int>(
        listener: (context, index) {
          _changePage(index);
        },
        child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            itemCount: pages.length,
            itemBuilder: (context, index) {
              return pages[index];
            }),
      ),
    ));
  }

  void _changePage(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: pageAnimationDuration),
        curve: Curves.easeInOut);
  }
}
