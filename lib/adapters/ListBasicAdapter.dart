import 'package:flutter/material.dart';

import '../model/people.dart';

class ListBasicAdapter {
  List? items = <People>[];
  List itemsTile = <ItemTile>[];

  ListBasicAdapter(this.items, onItemClick) {
    for (int i = 0; i < items!.length; i++) {
      itemsTile
          .add(ItemTile(index: i, object: items![i], onClick: onItemClick));
    }
  }

  Widget getView() {
    return ListView.builder(
      itemCount: itemsTile.length,
      itemBuilder: (BuildContext context, int index) {
        return itemsTile[index];
      },
      padding: EdgeInsets.symmetric(vertical: 5),
    );
  }
}

class ItemTile extends StatefulWidget {
  final int index;
  final People object;
  final Function(int, People) onClick;

  ItemTile({
    Key? key,
    required this.index,
    required this.object,
    required this.onClick,
  });

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
