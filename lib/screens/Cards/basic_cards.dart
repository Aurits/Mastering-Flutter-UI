import 'package:flutter/material.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class BasicCards extends StatefulWidget {
  const BasicCards();

  @override
  State<BasicCards> createState() => _BasicCardsState();
}

class _BasicCardsState extends State<BasicCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CommonAppBar.getPrimaryAppbar(context, "Basic Cards")
          as PreferredSizeWidget?,
    );
  }
}
