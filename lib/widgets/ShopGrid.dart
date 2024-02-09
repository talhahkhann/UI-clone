import 'package:flutter/material.dart';


class ShopGrid extends StatelessWidget {
  const ShopGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context , index){
        return Padding(padding: EdgeInsets.all(2.0),

          child: Container(
            color: Colors.blue[100],
          ),
        );
      },
        itemCount: 10,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
    )
    );
  }
}
