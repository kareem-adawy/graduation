import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart' show openDatabase;

import 'ArchivedScreen.dart';
import 'DoneScreen.dart';
import 'TasksScreen.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  int currentIndex = 1;
  List screen = [
    TasksScreen(),
    DoneScreen(),
    ArchivedScreen(),
  ];

  List titles = [
    "NEW TASKS",
    "DONE TASKS",
    "ARCHIVED TASKS"
  ];

  var database;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isBottomSheetShown = false;

  @override
  void initState() {
    super.initState();

    createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: scaffoldKey,
        title: Text(titles[currentIndex]),
      ),
      body: screen[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {
          if(isBottomSheetShown) {
            Navigator.pop(context);
            isBottomSheetShown = true;
          } else {
          scaffoldKey.currentState?.showBottomSheet((context) => Container(
            width: 200,
            height: 120,
            color: Colors.red,
          ));
        }
          isBottomSheetShown = true;
          },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            print(currentIndex);
          });
        },


        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu), label: "Tasks",),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_circle_outline), label: "Done"),
          BottomNavigationBarItem(
              icon: Icon(Icons.archive_outlined), label: "Archived"),
        ],
      ),
    );
  }


  Future<String> getName() async
  {
    return "KAREEM";
  }

  void createDatabase() async
  {
    database = await openDatabase(
      "todo.db",
      version: 1,
      onCreate: (database, version) {
        print("database created");
        database.execute(
            "CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT")
            .then((value) =>
            print("TABLES CREATED")
        );
      },
      onOpen: (database) {
        print("database opened");
      },
    );
  }

  void insertToDatabase()  async{
    await database.transaction((txn)  {
      txn.rawInsert(
          'INSERT INTO tasks(title, date, time, status) VALUES("first", "1234", "456.789", "kareem")');
      print('inserted successfully');
      
    });
  }
}