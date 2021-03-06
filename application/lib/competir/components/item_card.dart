import 'dart:async';
import 'package:application/level/level.dart';
import 'package:application/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:application/models/categorie.dart';

class ItemCard extends StatefulWidget {
  final User user;
  final Categorie categorie;
  //final Function press;
  const ItemCard({
    Key key,
    this.user,
    this.categorie,
    //this.press
  }
  ):super(key : key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  String _selected = "";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {   
        setState((){
          _selected = widget.categorie.title;
        });   
        print(widget.user.firstname);
        print(widget.user.lastname);                   
        print(widget.categorie.title);
        Timer(const Duration(milliseconds: 200), () {
          setState(() {
            _selected = "";
          });
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Level(user: widget.user, categoria: widget.categorie)),
        );

        }, 
      child: Stack(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 150,
              //margin: const EdgeInsets.all(3.0),         
              //padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: _selected == widget.categorie.title ? Border.all(
                  color: Colors.green,
                  width: 4,
                ):
                 Border.all(
                  color: Colors.grey,
                  width: 4,
                )
                ,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image:  AssetImage(widget.categorie.image),
                  fit: BoxFit.fill,
                ),
              ), 
            ),
          ),          
          Container(
            height: 150,
            alignment: Alignment.center,
            child: Stack(
              children:<Widget>[ 
                Text(widget.categorie.title,
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  //color: Color(0xff05ff00),
                  fontSize: 40,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 3
                    ..color = Colors.black,
                  
                  ),
                ),
                Text(widget.categorie.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff19d125),
                  fontSize: 40,            
                  ),
                ),
              ]
            )
          )
        ]
      ),
      
    );
  }
}