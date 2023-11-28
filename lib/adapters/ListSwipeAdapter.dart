import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_colors.dart';

import '../model/people.dart';

class ListSwipeAdapter {
  List? items = <People>[];
  Function onSwipe;

  ListSwipeAdapter(this.items, this.onSwipe);

  Widget getView() {
    return Container(
      child: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return ItemTile(index: index, object: items![index], onSwipe: onSwipe);
      }),
    );
  }
}

class ItemTile extends StatefulWidget {
  final int index;
  final People object;
  final Function onSwipe;

  const ItemTile({
    required this.index,
    required this.object,
    required this.onSwipe,
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
