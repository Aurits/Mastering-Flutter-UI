import 'package:flutter/material.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class BasicButtons extends StatefulWidget {
  const BasicButtons();

  @override
  State<BasicButtons> createState() => _BasicButtonsState();
}

class _BasicButtonsState extends State<BasicButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Basic")
          as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "NORMAL",
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
