import 'package:flutter/material.dart';
import 'package:flutter_ui/adapters/ListExpandAdapter.dart';
import 'package:flutter_ui/data/dummy.dart';
import 'package:flutter_ui/model/people.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class ExpandLists extends StatefulWidget {
  const ExpandLists();

  @override
  State<ExpandLists> createState() => _ExpandListsState();
}

class _ExpandListsState extends State<ExpandLists> {
  late BuildContext context;
  void onItemClick(int indext, People obj) {
    print("onItemClick $indext");
    print(obj.name);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    List<People> items = Dummy.getPeopleData();
    items.addAll(Dummy.getPeopleData());
    items.addAll(Dummy.getPeopleData());
    items.shuffle();

    return Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Expand Lists")
          as PreferredSizeWidget?,
      body: ListExpandAdapter(items).getView(),
    );
  }
}
