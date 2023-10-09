import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/auth/presentation/views/log_in_view.dart';
import 'package:wallet_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:wallet_app/features/home/presentation/manager/navigation_cubit/navigation_cubit.dart';
import 'package:wallet_app/features/home/presentation/views/home_view.dart';
import 'package:wallet_app/features/manage_cards/presentation/views/add_card_view.dart';
import 'package:wallet_app/features/manage_cards/presentation/views/card_details_view.dart';

import '../../features/home/presentation/views/profile_settings_view.dart';

class Routes {
  static const String home = '/home';
  static const String profileSettings = '/profileSettings';
  static const String logIn = '/LogIn';
  static const String signUp = '/signUp';
  static const String addCard = '/addCard';
  static const String cardDetails = '/cardDetails';
}

class RouteManager {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => NavigationCubit(),
                  child: const HomeView(),
                ));
      case Routes.profileSettings:
        return MaterialPageRoute(builder: (_) => const ProfileSettingsView());
      case Routes.logIn:
        return MaterialPageRoute(builder: (_) => const LogInView());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routes.addCard:
        return MaterialPageRoute(builder: (_) => const AddCardView());
      case Routes.cardDetails:
        return MaterialPageRoute(builder: (_) => const CardDetailsView());
      default:
        return _undefinedRoute();
    }
  }
}

MaterialPageRoute<dynamic> routeBuilder(Widget widget) =>
    MaterialPageRoute(builder: (_) => widget);

Route<dynamic> _undefinedRoute() => MaterialPageRoute(
    builder: (_) => const Scaffold(
          body: Center(
            child: Text('Undefined route'),
          ),
        ));
