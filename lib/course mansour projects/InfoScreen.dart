import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.phone,
    required this.name,
  });
}

class InfoScreen extends StatelessWidget {
List<UserModel> users = [
  UserModel(
    id: 2,
    name: "koko koko",
    phone: "576766866876"
  ),  UserModel(
      id: 2,
      name: "koko koko",
      phone: "576766866876"
  ),
  UserModel(
      id: 2,
      name: "koko koko",
      phone: "576766866876"
  ),
  UserModel(
      id: 2,
      name: "koko koko",
      phone: "576766866876"
  ),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: ListView.separated(itemBuilder: (context, index) => buildUserItem(users(index)),
          separatorBuilder: (context, index) => Container(
            height: 1,
            width: double.infinity,
            color: Colors.blue,
          ),
          itemCount: users.length)
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              child: Text(
                "1",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kareem Adawy",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                Text("+201094090704"),
              ],
            ),
          ],
        ),
      );
}
