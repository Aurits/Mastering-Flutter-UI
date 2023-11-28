import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_strings.dart';
import 'package:flutter_ui/widget/my_text.dart';

import '../model/people.dart';

class ListSectionAdapter {
  List? items = <People>[];
  List itemsTile = <ItemTile>[];
  late Function onItemClick;

  ListSectionAdapter(this.items, onItemClick) {
    this.onItemClick = onItemClick;
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
  final Function onClick;

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
    if (widget.object.section) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Text(
          widget.object.name!,
          style: MyText.body1(context)!
              .copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      );
    } else {
      return InkWell(
        onTap: () {
          widget.onClick(widget.index, widget.object);
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
                child: CircleAvatar(
                    backgroundImage: AssetImage(widget.object.image)),
              ),
              Container(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.object.name!,
                      style: MyText.title(context)!.copyWith(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[800],
                      ),
                    ),
                    Container(
                      height: 5,
                    ),
                    Text(
                      MyStrings.middle_lorem_ipsum,
                      style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[600],
                      ),
                    ),
                    Container(
                      height: 5,
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
