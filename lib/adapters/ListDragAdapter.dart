import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_colors.dart';

import '../model/people.dart';

class ListDragAdapter {
  List? items = <People>[];
  List itemsTile = <ItemTile>[];
  Function onReorder;

  ListDragAdapter(this.items, this.onReorder);

  Widget getView() {
    return ReorderableListView(
      onReorder: _onReorder,
      scrollDirection: Axis.vertical,
      children: List.generate(this.items!.length, (index) {
        return ItemTile(
          key: Key('$index'),
          index: index,
          object: this.items![index],
        );
      }),
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) newIndex -= 1;

    final People item = this.items!.removeAt(oldIndex);
    this.items!.insert(newIndex, item);
    this.onReorder();
  }
}

class ItemTile extends StatefulWidget {
  final int index;
  final People object;
  final Key key;

  const ItemTile({
    required this.key,
    required this.index,
    required this.object,
  });

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          key: PageStorageKey<int>(widget.index),
          leading: Container(
            child: CircleAvatar(
              backgroundImage: AssetImage(
                widget.object.image,
              ),
            ),
            width: 50,
            height: 50,
          ),
          title: Text(
            widget.object.name!,
            style: TextStyle(
              color: Colors.grey[880],
            ),
          ),
          trailing: Icon(
            Icons.drag_handle,
            color: MyColors.grey_40,
          ),
        ),
        Divider(
          height: 0,
        )
      ],
    );
  }
}
