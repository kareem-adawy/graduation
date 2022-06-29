import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dio_helper.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => buildNewsItem(),
          separatorBuilder: (context, index) => SizedBox(
            width: 10,
          ),
          itemCount: 15),
    );

  }
}
 Widget buildNewsItem() {
  return Padding(
     padding: const EdgeInsets.all(10.0),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [

         Container(
           height: 120,
           width: 120,
           decoration: BoxDecoration(
               borderRadius: BorderRadiusDirectional.circular(10),
               image: DecorationImage(
                   image: NetworkImage("https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/c6c637e0f1c76a969aa81cbc4fe0c218.jpg"),
                   fit: BoxFit.cover
               )
           ),
         ),
         SizedBox( width: 10),
         Expanded(
           child: Container(
             width: 220,
             height: 120,
             child: Expanded(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Expanded(
                     child: Text("Title",
                       maxLines: 3,
                       overflow: TextOverflow.ellipsis,
                       style: TextStyle(
                           fontSize: 25
                       ),
                     ),
                   ),
                   Text("Data: 2021-08-26T11:05:38Z",
                     style: TextStyle(
                         fontSize: 15,
                         color: Colors.grey
                     ),
                   ),
                 ],
               ),
             ),
           ),
         ),
       ],
     ),
   );
 }


 List<Map> business = [];

 void getBusiness() {
   DioHelper.getData(url: "v2/top-headlines",
     query:  {
       "county": "eg",
       "category": "business",
       "apiKey" : "65f7f556ec76449fa7dc7c0069f040ca"
     },
   ).then((value) {
     //print(value!.data["totalResult"]);
     business = value!.data["articles"];
     print(business[0]["titles"]);

   });
 }

 