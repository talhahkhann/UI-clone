import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Views/Tab2.dart';
import 'package:instagram_ui_clone/widgets/stories.dart';
import 'Tab3.dart';
import 'Tab4.dart';
import 'Tab2.dart';
import 'Tab1.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 4,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                Expanded(
        
                  child: Row(
        
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("100",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                          Text("Posts"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("275",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                          Text("Followers"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("190",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                          Text("Following"),
                        ],
                      )
                    ],
                  ),
                )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10,right: 170),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Talha Khan",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Follow me for more content!"),
                    Text("www.github/talhahkhann.com",style: TextStyle(color: Colors.blue),)
                  ],
                ),
        
              ),
        
             Padding(
               padding: EdgeInsets.only(top: 10,right: 13),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
        
                 OutlinedButton(
                   onPressed: () {},
                   child: Text('Edit Profile',style: TextStyle(color: Colors.black),),
                   style: OutlinedButton.styleFrom(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(12),
                     ),
                   ),
                 ),
        
                 OutlinedButton(
                   onPressed: () {},
                   child: Text('Share Profile',style: TextStyle(color: Colors.black),),
                   style: OutlinedButton.styleFrom(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(12),
                     ),
                   ),
                 ),
        
                 OutlinedButton(
                   onPressed: () {},
                   child: Icon(Icons.bookmark_add,color: Colors.black,),
                   style: OutlinedButton.styleFrom(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(12),
                     ),
                   ),
                 )
               ],),
             ),
              SizedBox(height: 5,),
              Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Stories(name: 'Web dev'),
                    Stories(name: 'App dev'),
                    Stories(name: 'Games'),
                    Stories(name: 'College'),
                    ElevatedButton(onPressed: (){
                      EasyDynamicTheme.of(context).changeTheme();
                    }, child: Text("Switch"))


                  ],
                ),
              ),

              TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call_outlined),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.account_circle),
                )
              ]),
              Expanded(child: TabBarView(children: [
                Tab1(),
                Tab3(),
                Tab4(),
              ]))

]
          ),

        ),
      ),
    );
  }
}
