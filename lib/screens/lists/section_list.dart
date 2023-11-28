import 'package:flutter/material.dart';
import 'package:flutter_ui/adapters/ListSectionAdapter.dart';
import 'package:flutter_ui/data/dummy.dart';
import 'package:flutter_ui/model/people.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class SectionLists extends StatefulWidget {
  const SectionLists();

  @override
  State<SectionLists> createState() => _SectionListsState();
}

class _SectionListsState extends State<SectionLists> {
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

    int sectCount = 0;
    int sectIdx = 0;
    List<String> months = Dummy.getStringsMonth();
    for (int i = 0; i < items.length / 6; i++) {
      items.insert(sectCount, new People.section(months[sectIdx], true));
      sectCount = sectCount + 5;
      sectIdx++;
    }

    return Scaffold(
        appBar: CommonAppBar.getPrimaryAppbar(context, "Section Lists")
            as PreferredSizeWidget?,
        body: ListSectionAdapter(items, onItemClick).getView());
  }
}
