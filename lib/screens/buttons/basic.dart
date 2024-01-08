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
            Row(
              children: [
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                  ),
                  child: Text(
                    "NORMAL",
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(
                    "NORMAL",
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                  ),
                  child: Text(
                    "NORMAL",
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Spacer(),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.transparent),
                    child: Text(
                      "Normal",
                      style: TextStyle(
                        color: Colors.grey[800],
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
