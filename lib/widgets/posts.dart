import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
String name;

Posts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(15),
          child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 43,
                    width: 43,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(name,style: TextStyle(fontWeight: FontWeight.bold),),

                ],
              ),
              Icon(Icons.menu)

            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey,
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          
           Row(children: [
             Icon(Icons.favorite_outline),
             Padding(
                 padding: EdgeInsets.symmetric(horizontal: 12),
                 child: Icon(Icons.comment_outlined)),
             Icon(Icons.share_outlined),
           ],),
            Row(children: [
              Icon(Icons.bookmark_add_outlined)
            ],),
          ],),
        ),
        Padding(
padding: EdgeInsets.only(left: 8.0),
          child: Row(children: [
            Text("Liked by"),
            Text(" Muhaddis",style: TextStyle(fontWeight: FontWeight.bold),),
            Text(" and "),
            Text("others",style: TextStyle(fontWeight: FontWeight.bold),),
          ],),
        ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
        child: Padding(
          padding: EdgeInsets.only(),
          child: RichText(

              text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: name  ,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    TextSpan(text: " You have to believe in yourself when no one else does!")
                  ]
              )),
        ),
      )
      ],
    );
  }
}
