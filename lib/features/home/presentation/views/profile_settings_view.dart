import 'package:flutter/material.dart';
import 'package:wallet_app/features/home/presentation/components/profile_settings_view_body.dart';

class ProfileSettingsView extends StatelessWidget {
  const ProfileSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileSettingsViewBody(),
    );
  }
}
