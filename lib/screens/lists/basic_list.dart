import 'package:flutter/material.dart';
import 'package:flutter_ui/data/dummy.dart';
import 'package:flutter_ui/model/people.dart';
import 'package:flutter_ui/widget/toolbar.dart';

import '../../adapters/ListBasicAdapter.dart';

class BasicLists extends StatefulWidget {
  const BasicLists();

  @override
  State<BasicLists> createState() => _BasicListsState();
}

class _BasicListsState extends State<BasicLists> {
  late BuildContext context;
  void onItemClick(int indext, People obj) {
    print("onItemClick $indext");
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    List<People> items = Dummy.getPeopleData();
    items.addAll(Dummy.getPeopleData());
    items.addAll(Dummy.getPeopleData());
    items.shuffle();
    return Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Basic Lists")
          as PreferredSizeWidget?,
      body: ListBasicAdapter(items, onItemClick).getView(),
    );
  }
}
