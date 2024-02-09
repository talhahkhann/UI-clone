import 'package:flutter/material.dart';

class Stories extends StatelessWidget {

String name;
Stories({required this.name});

@override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
            ),

          ),
          SizedBox(height: 10,),
          Text(name),
      
        ],
      ),
    );
  }
}
