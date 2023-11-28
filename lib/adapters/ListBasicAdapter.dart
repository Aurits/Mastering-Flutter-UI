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

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick(object);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 20,
            ),
            Container(
              width: 50,
              height: 50,
              child: CircleAvatar(backgroundImage: AssetImage(object.image)),
            ),
            Container(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }

  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}
