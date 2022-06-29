import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMessenger extends StatelessWidget {
  const MyMessenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1394463638140985351/HzrSvMse_400x400.jpg"),
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
            backgroundColor: Colors.grey,
            foregroundColor: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          CircleAvatar(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            backgroundColor: Colors.grey,
            foregroundColor: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey[100],
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: 15),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChaItem(),
                  itemCount: 15)
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildChaItem() => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1390x540:1392x538)/origin-imgresizer.eurosport.com/2021/08/05/3195392-65463108-2560-1440.jpg")),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Text(
                      "Abo Thiago",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: Text(
                        "hello ya Karamela wa47ny, Ana Abo Thiago ",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 7),
                    Text("3:15 PM"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

Widget buildStoryItem() => Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1390x540:1392x538)/origin-imgresizer.eurosport.com/2021/08/05/3195392-65463108-2560-1440.jpg"),
                radius: 30,
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.circle,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Container(
            width: 50,
            child: Text(
              "Lionel Messi",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
