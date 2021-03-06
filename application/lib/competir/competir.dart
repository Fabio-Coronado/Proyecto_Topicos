import 'package:application/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/body.dart';


class Competir extends StatelessWidget {
  final User user;
  Competir({
    Key key,
    this.user,
  }): super(key: key); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Categoría",
            style: GoogleFonts.mcLaren(
              fontSize:30,
            ),
          ), 
          centerTitle: true,
          backgroundColor: Colors.green,    
      ),
      body: Body(user: user),
          
    );
  }
}