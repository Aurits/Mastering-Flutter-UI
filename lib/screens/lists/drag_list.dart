import 'package:flutter/material.dart';
import 'package:flutter_ui/adapters/ListDragAdapter.dart';
import 'package:flutter_ui/data/dummy.dart';
import 'package:flutter_ui/model/people.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class DragLists extends StatefulWidget {
  const DragLists();

  @override
  State<DragLists> createState() => _DragListsState();
}

class _DragListsState extends State<DragLists> {
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
      appBar: CommonAppBar.getPrimaryAppbar(context, "Drag Lists")
          as PreferredSizeWidget?,
      body: ListDragAdapter(items, onReorder).getView(),
    );
  }
}
