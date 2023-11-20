import 'package:flutter/material.dart';

class WizardCard extends StatefulWidget {
  const WizardCard();

  @override
  State<WizardCard> createState() => _WizardCardState();
}

class _WizardCardState extends State<WizardCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          color: Colors.grey[100],
        ),
      ),
    );
  }
}
