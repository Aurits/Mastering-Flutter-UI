import 'package:flutter/material.dart';

class BasicBottomSheet extends StatefulWidget {
  const BasicBottomSheet();

  @override
  State<BasicBottomSheet> createState() => _BasicBottomSheetState();
}

class _BasicBottomSheetState extends State<BasicBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Bottom Sheet"),
      ),
    );
  }
}
