import 'package:flutter/material.dart';

import 'package:wallet_app/features/home/presentation/components/home_view_body.dart';

import '../components/bottom_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
