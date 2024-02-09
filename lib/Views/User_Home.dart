

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/posts.dart';
import 'package:instagram_ui_clone/widgets/stories.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  List<String> users = [
    'Talha Khan',
     'Fahad Nasir',
    'Ali Javed',
    'Muhaddis Rahman',
    'Yaseen'
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Instagram",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            Row(children: [
              Icon(Icons.add),
              Padding(
                padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.favorite)),
              Icon(Icons.share),
            ],)
            ],

          ),
        ),
        body: Column(children: [

          Container(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(children: [
                  Stories(name: 'Talha',),
                  Stories(name: 'Muhaddis',),
                  Stories(name: 'Ali',),
                  Stories(name: 'Fahad',),
                  Stories(name: 'Usman',),
                  Stories(name: 'Yaseen',),
                  Stories(name: 'Abdullah',),

                ],),
                
              ],
            ),
          ),
         Expanded(
           child: ListView.builder(
               itemCount: users.length,
               itemBuilder: (context , index){
             return  Posts(name: users[index],);
           }),
         )
        ],),
      ),
    );
  }
}
