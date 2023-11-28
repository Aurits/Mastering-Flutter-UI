import 'package:flutter/material.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class BasicLists extends StatefulWidget {
  const BasicLists();

  @override
  State<BasicLists> createState() => _BasicListsState();
}

class _BasicListsState extends State<BasicLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Basic Lists")
          as PreferredSizeWidget?,
    );
  }
}
