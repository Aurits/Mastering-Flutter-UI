import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_colors.dart';

import '../model/people.dart';

class ListSwipeAdapter {
  List<People>? items;
  Function(int, People) onSwipe;

  ListSwipeAdapter(this.items, this.onSwipe);

  Widget getView() {
    return Container(
      child: ListView.builder(
        itemCount: items!.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemTile(
            index: index,
            object: items![index],
            onSwipe: onSwipe,
          );
        },
      ),
    );
  }
}

class ItemTile extends StatefulWidget {
  final int index;
  final People object;
  final Function(int, People) onSwipe;

  const ItemTile({
    required this.index,
    required this.object,
    required this.onSwipe,
  });

  @override
  _ItemTileState createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.index.toString()),
      onDismissed: (direction) {
        widget.onSwipe(widget.index, widget.object);
      },
      background: Container(
        color: MyColors.accent,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Container(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  widget.object.image,
                ),
              ),
            ),
            title: Text(
              widget.object.name!,
              style: TextStyle(
                color: Colors.grey[880],
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              widget.object.email!,
              style: TextStyle(
                color: Colors.grey[880],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
