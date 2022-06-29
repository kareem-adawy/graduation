import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mansour_udemy/course%20mansour%20projects/My%20Messenger.dart';
import 'package:mansour_udemy/social%20app/profile.dart';

import 'Cubit/cubit.dart';
import 'Cubit/states.dart';

class socialApp extends StatelessWidget {

  int currentIndex = 0;

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SocialCubit(),
      child: BlocConsumer<SocialCubit, SocialStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
                actions: [
                  Icon(
                    Icons.notification_important_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Expanded(
                  child: Column(
                    children: [
                      Stack(
                          alignment: AlignmentDirectional.bottomEnd, children: [
                        Container(
                          child: Image(
                            image: NetworkImage(
                                "https://3rdu1m2gfl8c1nmhu62vod7x-wpengine.netdna-ssl.com/wp-content/uploads/2016/06/model-getting-makeup-done.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(), color: Colors
                              .greenAccent[200]),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyMessenger()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Explore The Latest Fashion Trends",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        )
                      ]),
                      SizedBox(
                        height: 8,
                      ),
                      ListView.separated(
                        itemBuilder: (context, index) => buildPostItem(context),
                        separatorBuilder: (context, index) =>
                            SizedBox(
                              height: 10,
                            ),
                        itemCount: 7,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                      )
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: currentIndex,
                onTap: (index) {
                  currentIndex = index;
                  print(currentIndex);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.chat), label: "Chats"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.add_box), label: "Post"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.supervised_user_circle_rounded),
                      label: "Users"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: "Setting"),
                ],
              ),
            );
          }),
    );
  }
}

  Widget buildPostItem(context) => Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQseSYK7uheBbLW3Q705WtusQdSKMYoNdJM9luSDvGeUXJfwWhvS--e7FH0aLkBUOAb8Rc&usqp=CAU"),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => ProfileAcc()));
                        },
                        child: Text(
                          "Victoria Secret",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(Icons.verified),
                    ],
                  ),
                  Text("September 15, 2021 at 22:00 pm"),
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Card(
            elevation: 0,
            child: Text(
              "“Based on what women told us“ Martha Pease, Victoria’s Secret’s chief marketing officer, told WWD. “The answers we got back had to do with representing a diverse way of thinking and relating to women, and showing more types of women, so that all types of women could see themselves in the brand.",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text("#Fashion")),
              TextButton(onPressed: () {}, child: Text("#Models")),
              TextButton(onPressed: () {}, child: Text("#Brands")),
            ],
          ),
          Card(
            child: Image(
              image: NetworkImage(
                  "https://imgix.bustle.com/wmag/2020/03/victorias-secret-body-by-victoria-2020-bbv-lingerie-collection-hi-res.jpg?w=1200&h=630&fit=crop&crop=faces&fm=jpg"),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.phonelink_erase_outlined),
                    Text("120"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.comment),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("50"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQseSYK7uheBbLW3Q705WtusQdSKMYoNdJM9luSDvGeUXJfwWhvS--e7FH0aLkBUOAb8Rc&usqp=CAU"),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [Text("Write A Comment")],
              ),
            ],
          ),
        ],
      );

