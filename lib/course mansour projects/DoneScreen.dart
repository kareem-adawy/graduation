import 'package:flutter/cupertino.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Done",
            style: TextStyle(
              fontSize: 50,
            ),),
        ],
      ),
    );
  }
}