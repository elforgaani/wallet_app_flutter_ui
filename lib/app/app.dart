import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/core/resource/theme_manager.dart';
import 'package:wallet_app/core/utils/constants.dart';
import 'package:wallet_app/features/auth/presentation/views/sign_up_view.dart';
import '../core/utils/route_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();
  static const MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: designSize,
      builder: (context, child) {
        return MaterialApp(
          theme: getAppTheme(),
          onGenerateRoute: RouteManager.getRoute,
          home: const SignUpView(),
        );
      },
    );
  }
}
