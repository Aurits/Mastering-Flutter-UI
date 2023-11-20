import 'package:flutter/material.dart';
import 'package:flutter_ui/data/dummy.dart';
import 'package:flutter_ui/model/wizard.dart';

class WizardCard extends StatefulWidget {
  const WizardCard();

  @override
  State<WizardCard> createState() => _WizardCardState();
}

class _WizardCardState extends State<WizardCard> {
  List<Wizard> wizardData = Dummy.getWizard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          color: Colors.grey[100],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: onPageViewChange,
                controller: pageController,
                children: buildPageViewItem(),
              ),
            ),
            // Align(
            //   alignment: Alignment.topCenter,
            //   child: Container(
            //     height: 60,
            //     child: Align(
            //       alignment: Alignment.topCenter,
            //       child: buildDots(context),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  int page = 0;
  bool isLast = false;
  PageController pageController = PageController(
    initialPage: 0,
  );
  void onPageViewChange(int _page) {
    page = _page;
    isLast = _page == wizardData.length - 1;
    setState(() {});
  }

  List<Widget> buildPageViewItem() {
    List<Widget> widgets = [];
    // ignore: unused_local_variable
    for (Wizard wz in wizardData) {
      Widget wg = Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  wz.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wz.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    wz.brief,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
      widgets.add(wg);
    }
    return widgets;
  }
}
