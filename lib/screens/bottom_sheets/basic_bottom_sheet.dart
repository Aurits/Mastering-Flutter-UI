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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text("Basic Bottom Sheet"),
      ),
    );
  }
}
