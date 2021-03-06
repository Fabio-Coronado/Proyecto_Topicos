import 'package:application/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:application/models/categorie.dart';

import 'item_card.dart';

class Body extends StatelessWidget {
  final User user;
  Body({
    Key key,
    this.user,
  }): super(key: key); 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              //color: Colors.red,
              child: Text(
                "Elija una Categoría:",
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              )
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) => ItemCard(
                  user: user,
                  categorie: categories[index],                  
                ),
              ) 
          )
          )
        ] ,
    ),
    );
  }
}