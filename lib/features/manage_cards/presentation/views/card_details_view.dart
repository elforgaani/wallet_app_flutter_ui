import 'package:flutter/material.dart';
import 'package:wallet_app/features/manage_cards/presentation/components/card_details_view_body.dart';

class CardDetailsView extends StatelessWidget {
  const CardDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CardDetailsViewBody(),
    );
  }
}
