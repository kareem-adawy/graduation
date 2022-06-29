import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'My Messenger.dart';

class TalkPhoto extends StatefulWidget {
  const TalkPhoto({Key? key}) : super(key: key);

  @override
  _TalkPhotoState createState() => _TalkPhotoState();
}

class _TalkPhotoState extends State<TalkPhoto> {
  int age = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Talk To Photo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ARE YOU READY FOR THE MOST THRILLING EXPERIENCE OF YOUR LIFE?",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://st.focusedcollection.com/9163412/i/650/focused_274308198-stock-photo-excited-young-woman-touching-air.jpg"),
              radius: 60,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Sign Up NOW!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                  suffixIcon: Icon(Icons.account_box),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 15, 8, 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "PassWord",
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(onPressed: () {
                  setState(() {
                    age++;
                  });
                },
                  child: 
                  Icon(Icons.add),
                  backgroundColor: Colors.pinkAccent,

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Age = $age",
                  style: TextStyle(
                    fontSize: 20
                  )
                  ),
                ),
                FloatingActionButton(onPressed: () {
                  setState(() {
                    age--;
                  });
                },
                  child: 
                  Icon(Icons.remove),
                  backgroundColor: Colors.pinkAccent,


                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Container(
                width: double.infinity,
                height: 40,
                color: Colors.pinkAccent,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => MyMessenger()));
                  },
                  child: Text(
                    "log in",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
