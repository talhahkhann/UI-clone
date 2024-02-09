import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/Posts_Grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Container(
              padding: EdgeInsets.all(2),
              color: Colors.grey[300],
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                      padding: EdgeInsets.all(7),

                      child: Text("Search",style: TextStyle(color: Colors.grey[500]),),
                    )
                  ],
                ),
              ),
            ),
          ),
      
        ),
        body: PostsGrid(),
      ),
    );
  }
}
