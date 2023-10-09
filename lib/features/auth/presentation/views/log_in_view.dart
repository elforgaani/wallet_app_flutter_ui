import 'package:flutter/material.dart';
import 'package:wallet_app/features/auth/presentation/components/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LogInViewBody(),
    );
  }
}
