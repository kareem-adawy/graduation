import 'package:flutter/cupertino.dart';

class ArchivedScreen extends StatelessWidget {
  const ArchivedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Archived",
            style: TextStyle(
              fontSize: 50,
            ),),
        ],
      ),
    );
  }
}