import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Column(
            children: [
              Container(
              color: Colors.blue[700],
              width: double.infinity,
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 29, 0, 5),
                    child: Text(
                      "Facebook",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email or Phone",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                        Container(
                          color: Colors.white,
                          height: 20,
                          width: 110,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                        Container(
                          color: Colors.white,
                          height: 20,
                          width: 110,
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
        ),
              SizedBox(
                height: 10,),
              Text("Sign Up For Free",
              style: TextStyle(
                fontSize: 25
              ),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
             decoration: InputDecoration(
                  hintText: " first name",
                  border: OutlineInputBorder()
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
             decoration: InputDecoration(
                  hintText: " Mobile number or email",
                  border: OutlineInputBorder()
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
             decoration: InputDecoration(
                  hintText: " New password",
                  border: OutlineInputBorder()
              ),

            ),
          ),
          Text("Birthday",
          style: TextStyle(
            fontSize: 20
          ),),
          GestureDetector(
    child: new Icon(Icons.calendar_today),
    onTap: ()async {
      final datePick = await showDatePicker(
          context: context,
          initialDate: new DateTime.now(),
          firstDate: new DateTime(1900),
          lastDate: new DateTime(2100)
      );
    }
    )]),

    );
  }
}
