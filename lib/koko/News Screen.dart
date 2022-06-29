import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mansour_udemy/koko/Cubit/cubit.dart';
import 'package:mansour_udemy/koko/Cubit/states.dart';
import 'package:mansour_udemy/koko/dio_helper.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => NewsCubit(),
        child: BlocConsumer<NewsCubit, NewsStates>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = NewsCubit.get(context);
              return Scaffold(
                appBar: AppBar(
                  title: Text(
                    "NEWS APP",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    )
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    DioHelper.getData(url: "v2/top-headlines?",
                        query: {
                      "country" : "us",
                    "category" : "business",
                    "apiKey" : "a6667b7326c04ca2811a0a48fdb33be5"
                    }
                    ).then((value) => value!.data.toString());

                  },
                ),
                bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: cubit.currentIndex,
                  onTap: (index) {
                    cubit.changeBottomNevBar(index);
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.business_sharp), label: "business"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.sports_baseball_sharp),
                        label: "Sports"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.science_outlined), label: "Science"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.settings), label: "Setting"),
                  ],
                ),
                body: cubit.screens[cubit.currentIndex],
              );
            }));
  }
}
