import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projectPet/login/petHomeClass.dart';

class DetailsALLpet extends StatelessWidget {
  final InfoALLpet dog;

  DetailsALLpet({required this.dog});

  @override
  Widget build(BuildContext context) {
    TextStyle appBarTextStyle = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      fontFamily: 'Meow',
      color: Colors.black,
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, toolbarHeight: 100.0,
        title: Text('🐾 Dog World 🐾',
          style: appBarTextStyle,
        ),
        actions: <Widget>[
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Hero(
              tag: dog.id_ALLpet,
              child: Image.asset(dog.image_ALLpet),
            ),
            Text(
              dog.title_ALLpet,
              style: TextStyle(
                fontFamily: 'PakkadThin',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
