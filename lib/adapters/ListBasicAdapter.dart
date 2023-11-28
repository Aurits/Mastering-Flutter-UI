import 'package:flutter/material.dart';
import 'package:flutter_ui/model/people.dart';

class ListBasicAdapter {
  List? items = <People>[];
  List itemsTile = <ItemsTile>[];

  ListBasicAdapter(this.items, onItemClick) {
    for (int i = 0; i < items!.length; i++) {
      itemsTile
          .add(ItemsTile(index: i, object: items![i], onClick: onItemClick));
    }
  }
  Widget getView() {
    return Container(
      child: ListView.builder(
          itemCount: itemsTile.length,
          itemBuilder: (BuildContext context, int index) {
            return itemsTile[index];
          },
          padding: EdgeInsets.symmetric(vertical: 8.0)),
    );
  }
}

class ItemsTile extends StatefulWidget {
  final int index;
  final People object;
  final Function onClick;
  const ItemsTile(
      {Key? key,
      required this.index,
      required this.object,
      required this.onClick});

  @override
  State<ItemsTile> createState() => _ItemsTileState();
}

class _ItemsTileState extends State<ItemsTile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
