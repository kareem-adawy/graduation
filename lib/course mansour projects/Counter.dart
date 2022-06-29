import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mansour_udemy/Cubit/States.dart';
import 'package:mansour_udemy/Cubit/cubit.dart';

import 'My Messenger.dart';

class CounterScreen extends StatelessWidget {
  int counter = 1;

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Counter",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                  actions: [
                    InkWell(
                      child: Icon(Icons.access_alarm,
                      color: Colors.black,),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => MyMessenger()));
                      },

                    )
                  ],
                ),
                body: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            CounterCubit.get(context).minus();
                            print(counter);
                          },
                          child: Text(
                            "Down",
                            style: TextStyle(
                              fontSize: 50,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${CounterCubit.get(context).counter}",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            CounterCubit.get(context).plus();
                            print(counter);
                          },
                          child: Text(
                            "Up",
                            style: TextStyle(
                              fontSize: 50,
                            ),
                          ),
                        ),
                      ]),
                ));
          }),
    );
  }
}
