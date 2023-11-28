import 'package:flutter/material.dart';
import 'package:flutter_ui/adapters/ListSwipeAdapter.dart';
import 'package:flutter_ui/data/dummy.dart';
import 'package:flutter_ui/model/people.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class SwipeLists extends StatefulWidget {
  const SwipeLists();

  @override
  State<SwipeLists> createState() => _SwipeListsState();
}

class _SwipeListsState extends State<SwipeLists> {
  late BuildContext context;
  List<People>? items;

  @override
  void initState() {
    super.initState();
    items = Dummy.getPeopleData();
  }

  void onReorder() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Swipe Lists")
          as PreferredSizeWidget?,
      body: ListSwipeAdapter(items, onReorder).getView(),
    );
  }
}
