import 'package:flutter/material.dart';

import '../components/add_card_view_body.dart';

class AddCardView extends StatelessWidget {
  const AddCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddCardViewBody(),
    );
  }
}
