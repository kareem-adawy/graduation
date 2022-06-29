import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileAcc extends StatelessWidget {
  const ProfileAcc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Account",
        ),
        actions: [Icon(Icons.offline_share)],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Expanded(
          child: Column(
            children: [
              Container(
                height: 250,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topCenter,
                      child: Container(
                        width: double.infinity,
                        height: 200,
                          child: Image(image: NetworkImage("https://s29588.pcdn.co/wp-content/uploads/sites/2/2020/03/2Album-Covers-Censored-Audiences-Abroad-Featured-Image-1.jpg.optimal.jpg.optimal.jpg"),
                          fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top:10),
                      child: CircleAvatar(
                        radius: 53,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQseSYK7uheBbLW3Q705WtusQdSKMYoNdJM9luSDvGeUXJfwWhvS--e7FH0aLkBUOAb8Rc&usqp=CAU"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Victoria Secret",
                    style: TextStyle(
                        fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.verified),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(height: 50,
                  color: Colors.blue,
                  width: 180,
                  child: MaterialButton(

                    onPressed: () {},
                    child: Text(
                      "Add Friend",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ),
                  SizedBox(
                      width: 10),
                  Container(height: 50,
                  color: Colors.blue,
                  width: 150,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Follow",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ),
                  SizedBox(
                      width: 6),
                  Container(height: 50,
                  color: Colors.blue,
                  width: 44,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Icon(Icons.more_horiz),
                  ),
                  ),

                ],
              ),
              SizedBox(
                height: 10),
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
    );
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
                  Text(
                    "Victoria Secret",
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
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

}
